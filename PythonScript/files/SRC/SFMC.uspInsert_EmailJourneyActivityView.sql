USE [SRC]
GO


SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



/*  COPYRIGHT (C) 2012 Quicken Loans - Template version 1.1

20200422 - Krishnaveni Kolli - TFS#1899686 - InitialCreation
							 - Inserts data from BiStage to SRC
*/


CREATE PROCEDURE [SFMC].[uspInsert_EmailJourneyActivityView] (@BatchId INT)
AS
    BEGIN
	
        SET NOCOUNT ON;
        SET XACT_ABORT ON;

        ----
        ---- Template variables
        ----
        DECLARE @startTimeStamp AS DATETIME2(3);
        DECLARE @endTimestamp AS DATETIME2(3);
        DECLARE @accountName AS VARCHAR(128);
        DECLARE @InsertCount INT;
        DECLARE @UpdateCount INT;
        DECLARE @DeleteCount INT;
        DECLARE @ModifiedCount INT;
        DECLARE @ExecutionElapsed INT;
        DECLARE @DatabaseName VARCHAR(128);
        DECLARE @SchemaName VARCHAR(128);
        DECLARE @ObjectName VARCHAR(128);

        SET @startTimeStamp = GETDATE();
        SET @accountName = SUSER_NAME();
        SET @InsertCount = 0;
        SET @UpdateCount = 0;
        SET @DeleteCount = 0;
        SET @ModifiedCount = 0;
        SET @ExecutionElapsed = 0;
        SET @DatabaseName = DB_NAME();
        SET @SchemaName = OBJECT_SCHEMA_NAME(@@PROCID);
        SET @ObjectName = OBJECT_NAME(@@PROCID);


        ----
        ---- User-defined variables
      
        ---- This table will wind up holding one record per each action taken. The first
        ---- two fields should always be in this table.  More fields may be added to help
        ---- facilitate other DML operations.
        ----
        CREATE TABLE #t_actions ([ActionsID] INT IDENTITY(1, 1) PRIMARY KEY
                               , [Action] NVARCHAR(10));

        BEGIN TRY
		
        BEGIN TRANSACTION;

            INSERT INTO SRC.SFMC.EmailJourneyActivityView
            (
                VerisonID
              , ActivityID
              , ModifiedDate
              , ActivityExternalKey
              , JourneyActivityObjectID
              , ActivityType
              , ActivityName
              , JourneyName
              , datekey
              , Hourkey
              , ETLInsertBatchId
              , RecordInsertTimestamp
              , RecordInsertUserName
            )
          
           
            OUTPUT
                'Insert' AS [Action]
            INTO #t_actions

            SELECT
                VerisonID
              , ActivityID
              , ModifiedDate
              , ActivityExternalKey
              , JourneyActivityObjectID
              , ActivityType
              , ActivityName
              , JourneyName
              , datekey
              , Hourkey
              , @BatchId
              , GETDATE()
              , GETDATE()
              FROM BIStage.[SFMC].[EmailJourneyActivityView];

            ----*************** END DML CODE
			----
            ---- After all DML statements are executed, store the cumulative
            ---- record counts into the appropriate variables.
            ----
            SELECT
                @InsertCount = COUNT(*)
              FROM #t_actions
             WHERE [Action] = 'Insert';

            SELECT
                @UpdateCount = COUNT(*)
              FROM #t_actions
             WHERE [Action] = 'Update';

            SELECT
                @DeleteCount = COUNT(*)
              FROM #t_actions
             WHERE [Action] = 'Delete';


            COMMIT TRANSACTION;

        END TRY
        BEGIN CATCH

            ----
            ---- Declare Error Variables
            ----
            DECLARE @errorProc sysname = ERROR_PROCEDURE();
            DECLARE @errorMsg NVARCHAR(4000) = ERROR_MESSAGE();
            DECLARE @errorLine INT = ERROR_LINE();
            DECLARE @errorNum INT = ERROR_NUMBER();
            DECLARE @errorSeverity INT = ERROR_SEVERITY();
            DECLARE @errorState INT = ERROR_STATE();
            DECLARE @errorUser NVARCHAR(128) = SYSTEM_USER;
            DECLARE @errorDate DATETIME = GETDATE();


            ----
            ---- Roll back any active or uncommittable transactions before
            ---- inserting information in the ErrorLog.
            ----
            IF XACT_STATE() <> 0 BEGIN
ROLLBACK TRANSACTION;
END;

            EXECUTE DWUtilities.DR.uspLogErrorTrackingEntry
                @ErrorCallingProcedure = @errorProc
              , @ErrorProcedure = @errorProc
              , @ErrorNumber = @errorNum
              , @ErrorSeverity = @errorSeverity
              , @ErrorState = @errorState
              , @ErrorLine = @errorLine
              , @ErrorMessage = @errorMsg
              , @ErrorDataXML = NULL
              , @ErrorUserName = @errorUser
              , @ErrorHostName = @@SERVERNAME
              , @ErrorCreateDate = @errorDate;

            RAISERROR(@errorMsg, @errorSeverity, @errorState);

        END CATCH;

        SET @ModifiedCount = @InsertCount + @UpdateCount + @DeleteCount;
        SET @endTimestamp = GETDATE();
        SET @ExecutionElapsed = DATEDIFF(MILLISECOND, @startTimeStamp, @endTimestamp);

        EXECUTE QLDWAudit.Logging.uspLogStoredProcedureExecution
            @BatchId = @BatchId
          , @InsertCount = @InsertCount
          , @UpdateCount = @UpdateCount
          , @DeleteCount = @DeleteCount
          , @ModifiedCount = @ModifiedCount
          , @ElapsedMilliseconds = @ExecutionElapsed
          , @DatabaseName = @DatabaseName
          , @SchemaName = @SchemaName
          , @ObjectName = @ObjectName;

    END;

GO


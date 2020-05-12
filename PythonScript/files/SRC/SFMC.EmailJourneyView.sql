USE [SRC]
GO


SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [SFMC].[EmailJourneyView](
	[VerisonID] [uniqueidentifier] NULL,
	[JourneyID] [uniqueidentifier] NULL,
	[JourneyName] [nvarchar](400) NULL,
	[VerisonNumber] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[LastPublishedDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[JourneyStatus] [nvarchar](100) NULL,
	[Datekey] [varchar](10) NULL,
	[Hourkey] [tinyint] NULL,
	[ETLInsertBatchId] [bigint] NOT NULL,
	[RecordInsertTimestamp] [datetime2](4) NOT NULL,
	[RecordInsertUserName] [varchar](100) NOT NULL
) ON [Data]

GO

ALTER TABLE [SFMC].[EmailJourneyView] ADD  CONSTRAINT [DEF_EmailJourneyView_ETLInsertBatchId]  DEFAULT ((-1)) FOR [ETLInsertBatchId]
GO

ALTER TABLE [SFMC].[EmailJourneyView] ADD  CONSTRAINT [DEF_EmailJourneyView_RecordInsertTimestamp]  DEFAULT (sysdatetime()) FOR [RecordInsertTimestamp]
GO

ALTER TABLE [SFMC].[EmailJourneyView] ADD  CONSTRAINT [DEF_EmailJourneyView_RecordInsertUserName]  DEFAULT (suser_sname()) FOR [RecordInsertUserName]
GO


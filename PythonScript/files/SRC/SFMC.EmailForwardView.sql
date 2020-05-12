USE [SRC]
GO


SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [SFMC].[EmailForwardView](
	[SubscriberID] [bigint] NULL,
	[SubscriberKey] [nvarchar](254) NULL,
	[FirstName] [varchar](100) NULL,
	[LastName] [varchar](100) NULL,
	[EmailAddress] [nvarchar](254) NULL,
	[PEID] [varchar](50) NULL,
	[GCID] [bigint] NULL,
	[LoanNumber] [varchar](15) NULL,
	[TransactionTime] [datetime] NULL,
	[TriggeredSendCustomerKey] [varchar](36) NULL,
	[TriggererSendDefinitionObjectID] [varchar](36) NULL,
	[Business_Unit_ID] [bigint] NULL,
	[Domain] [varchar](128) NULL,
	[IsUnique] [bit] NULL,
	[JobID] [int] NULL,
	[BatchID] [int] NULL,
	[ListID] [int] NULL,
	[Datekey] [varchar](10) NULL,
	[HourKey] [tinyint] NULL,
	[ETLInsertBatchId] [bigint] NOT NULL,
	[RecordInsertTimestamp] [datetime2](4) NOT NULL,
	[RecordInsertUserName] [varchar](100) NOT NULL
) ON [Data]

GO

ALTER TABLE [SFMC].[EmailForwardView] ADD  CONSTRAINT [DEF_EmailForwardView_ETLInsertBatchId]  DEFAULT ((-1)) FOR [ETLInsertBatchId]
GO

ALTER TABLE [SFMC].[EmailForwardView] ADD  CONSTRAINT [DEF_EmailForwardView_RecordInsertTimestamp]  DEFAULT (sysdatetime()) FOR [RecordInsertTimestamp]
GO

ALTER TABLE [SFMC].[EmailForwardView] ADD  CONSTRAINT [DEF_EmailForwardView_RecordInsertUserName]  DEFAULT (suser_sname()) FOR [RecordInsertUserName]
GO


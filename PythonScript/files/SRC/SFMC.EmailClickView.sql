USE [SRC]
GO


SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [SFMC].[EmailClickview](
	[SubscriberID] [bigint] NULL,
	[SubscriberKey] [nvarchar](254) NULL,
	[FirstName] [varchar](100) NULL,
	[LastName] [varchar](100) NULL,
	[EmailAddress] [nvarchar](254) NULL,
	[PEID] [varchar](50) NULL,
	[GCID] [nvarchar](255) NULL,
	[LoanNumber] [varchar](15) NULL,
	[JobID] [bigint] NULL,
	[BatchID] [bigint] NULL,
	[ListID] [int] NULL,
	[EventDate] [datetime] NULL,
	[TriggeredSendCustomerKey] [varchar](36) NULL,
	[TriggererSendDefinitionObjectID] [varchar](36) NULL,
	[Business_Unit_ID] [bigint] NULL,
	[Domain] [varchar](128) NULL,
	[IsUnique] [bit] NULL,
	[URL] [varchar](900) NULL,
	[LinkName] [varchar](1024) NULL,
	[LinkContent] [varchar](max) NULL,
	[DateKey] [varchar](10) NULL,
	[HourKey] [int] NULL,
	[ETLInsertBatchId] [bigint] NOT NULL,
	[RecordInsertTimestamp] [datetime2](4) NOT NULL,
	[RecordInsertUserName] [varchar](100) NOT NULL
) ON [Data] TEXTIMAGE_ON [Data]

GO

ALTER TABLE [SFMC].[EmailClickview] ADD  CONSTRAINT [DEF_EmailClickview_ETLInsertBatchId]  DEFAULT ((-1)) FOR [ETLInsertBatchId]
GO

ALTER TABLE [SFMC].[EmailClickview] ADD  CONSTRAINT [DEF_EmailClickview_RecordInsertTimestamp]  DEFAULT (sysdatetime()) FOR [RecordInsertTimestamp]
GO

ALTER TABLE [SFMC].[EmailClickview] ADD  CONSTRAINT [DEF_EmailClickview_RecordInsertUserName]  DEFAULT (suser_sname()) FOR [RecordInsertUserName]
GO


USE [SRC]
GO


SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [SFMC].[EmailBounceview](
	[SubscriberID] [bigint] NULL,
	[SubscriberKey] [nvarchar](254) NULL,
	[FirstName] [varchar](100) NULL,
	[LastName] [varchar](100) NULL,
	[EmailAddress] [nvarchar](254) NULL,
	[PEID] [varchar](50) NULL,
	[GCID] [bigint] NULL,
	[LoanNumber] [varchar](15) NULL,
	[JobID] [bigint] NULL,
	[BatchID] [bigint] NULL,
	[ListID] [int] NULL,
	[EventDate] [datetime] NULL,
	[TriggeredSendCustomerKey] [nvarchar](36) NULL,
	[TriggererSendDefinitionObjectID] [nvarchar](255) NULL,
	[Business_Unit_ID] [bigint] NULL,
	[Domain] [varchar](128) NULL,
	[IsUnique] [bit] NULL,
	[BounceCategoryID] [smallint] NULL,
	[BounceCategory] [nvarchar](50) NULL,
	[BounceSubcategoryID] [smallint] NULL,
	[BounceSubcategory] [nvarchar](50) NULL,
	[BounceTypeID] [smallint] NULL,
	[BounceType] [nvarchar](50) NULL,
	[SMTPBounceReason] [nvarchar](max) NULL,
	[SMTPMessage] [nvarchar](max) NULL,
	[SMTPCode] [smallint] NULL,
	[DateKey] [varchar](10) NULL,
	[HourKey] [int] NULL,
	[ETLInsertBatchId] [bigint] NOT NULL,
	[RecordInsertTimestamp] [datetime2](4) NOT NULL,
	[RecordInsertUserName] [varchar](100) NOT NULL
) ON [Data] TEXTIMAGE_ON [Data]

GO

ALTER TABLE [SFMC].[EmailBounceview] ADD  CONSTRAINT [DEF_EmailBounceview_ETLInsertBatchId]  DEFAULT ((-1)) FOR [ETLInsertBatchId]
GO

ALTER TABLE [SFMC].[EmailBounceview] ADD  CONSTRAINT [DEF_EmailBounceview_RecordInsertTimestamp]  DEFAULT (sysdatetime()) FOR [RecordInsertTimestamp]
GO

ALTER TABLE [SFMC].[EmailBounceview] ADD  CONSTRAINT [DEF_EmailBounceview_RecordInsertUserName]  DEFAULT (suser_sname()) FOR [RecordInsertUserName]
GO


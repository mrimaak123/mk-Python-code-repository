USE [SRC]
GO


SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [SFMC].[EmailSendJobView](
	[JobID] [int] NULL,
	[EmailID] [int] NULL,
	[Business_Unit_ID] [bigint] NULL,
	[FromName] [nvarchar](130) NULL,
	[FromEmail] [varchar](100) NULL,
	[SchedTime] [datetime] NULL,
	[PickupTime] [datetime] NULL,
	[DeliveredTime] [datetime] NULL,
	[EventID] [varchar](50) NULL,
	[IsMultipart] [bit] NULL,
	[JobType] [varchar](50) NULL,
	[JobStatus] [varchar](50) NULL,
	[ModifiedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[EmailName] [varchar](100) NULL,
	[EmailSubject] [nvarchar](200) NULL,
	[IsWrapped] [bit] NULL,
	[Category] [varchar](100) NULL,
	[BccEmail] [varchar](100) NULL,
	[CreatedDate] [datetime] NULL,
	[IPAddress] [varchar](50) NULL,
	[SalesForceTotalSubscriberCount] [int] NULL,
	[SalesForceErrorSubscriberCount] [int] NULL,
	[SendType] [varchar](128) NULL,
	[DynamicEmailSubject] [nvarchar](max) NULL,
	[SuppressTracking] [bit] NULL,
	[SendClassificationType] [nvarchar](32) NULL,
	[SendClassification] [nvarchar](36) NULL,
	[ResolveLinksWithCurrentData] [bit] NULL,
	[EmailSendDefinition] [nvarchar](36) NULL,
	[DeduplicateByEmail] [bit] NULL,
	[TriggererSendDefinitionObjectID] [varchar](36) NULL,
	[TriggeredSendCustomerKey] [varchar](36) NULL,
	[Datekey] [varchar](10) NULL,
	[HourKey] [tinyint] NULL,
	[ETLInsertBatchId] [bigint] NOT NULL,
	[RecordInsertTimestamp] [datetime2](4) NOT NULL,
	[RecordInsertUserName] [varchar](100) NOT NULL
) ON [Data] TEXTIMAGE_ON [Data]

GO

ALTER TABLE [SFMC].[EmailSendJobView] ADD  CONSTRAINT [DEF_EmailSendJobView_ETLInsertBatchId]  DEFAULT ((-1)) FOR [ETLInsertBatchId]
GO

ALTER TABLE [SFMC].[EmailSendJobView] ADD  CONSTRAINT [DEF_EmailSendJobView_RecordInsertTimestamp]  DEFAULT (sysdatetime()) FOR [RecordInsertTimestamp]
GO

ALTER TABLE [SFMC].[EmailSendJobView] ADD  CONSTRAINT [DEF_EmailSendJobView_RecordInsertUserName]  DEFAULT (suser_sname()) FOR [RecordInsertUserName]
GO


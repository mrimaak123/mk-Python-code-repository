USE [SRC]
GO


SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [SFMC].[EmailJourneyActivityView](
	[VerisonID] [nvarchar](255) NULL,
	[ActivityID] [nvarchar](255) NULL,
	[ModifiedDate] [datetime] NULL,
	[ActivityExternalKey] [varchar](200) NULL,
	[JourneyActivityObjectID] [nvarchar](255) NULL,
	[ActivityType] [nvarchar](256) NULL,
	[ActivityName] [varchar](200) NULL,
	[JourneyName] [nvarchar](400) NULL,
	[datekey] [varchar](10) NULL,
	[Hourkey] [tinyint] NULL,
	[ETLInsertBatchId] [bigint] NOT NULL,
	[RecordInsertTimestamp] [datetime2](4) NOT NULL,
	[RecordInsertUserName] [varchar](100) NOT NULL
) ON [Data]

GO

ALTER TABLE [SFMC].[EmailJourneyActivityView] ADD  CONSTRAINT [DEF_EmailJourneyActivityView_ETLInsertBatchId]  DEFAULT ((-1)) FOR [ETLInsertBatchId]
GO

ALTER TABLE [SFMC].[EmailJourneyActivityView] ADD  CONSTRAINT [DEF_EmailJourneyActivityView_RecordInsertTimestamp]  DEFAULT (sysdatetime()) FOR [RecordInsertTimestamp]
GO

ALTER TABLE [SFMC].[EmailJourneyActivityView] ADD  CONSTRAINT [DEF_EmailJourneyActivityView_RecordInsertUserName]  DEFAULT (suser_sname()) FOR [RecordInsertUserName]
GO


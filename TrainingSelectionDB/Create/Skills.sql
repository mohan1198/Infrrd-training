Use [TrainingSelection]
go

Create table [dbo].[Skills]
(
[SkillId] [bigint] Identity(1,1) NOT NULL,
[SkillName] [nvarchar](100)  NOT NULL,
CONSTRAINT [PK_SkillId] PRIMARY KEY CLUSTERED 
(
	[SkillId] ASC
)
)
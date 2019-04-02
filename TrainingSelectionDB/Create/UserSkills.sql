Use [TrainingSelection]
go

Create table [dbo].[UserSkills]
(
[UserSkillId] [bigint] Identity(1,1) NOT NULL,
[Skillid] [bigint]  NOT NULL,
[Date] [date] NOT Null
CONSTRAINT [PK_UserSkillId] PRIMARY KEY CLUSTERED 
(
	[UserSkillId] ASC
)
)


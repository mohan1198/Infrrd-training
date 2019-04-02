Use [TrainingSelection]
go

Create table [dbo].[Users]
(
[UserId] [bigint] Identity(1,1) NOT NULL,
[UserMail] [nvarchar](100)  NOT NULL,
CONSTRAINT [PK_UserId] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)
)
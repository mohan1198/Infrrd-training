USE [TrainingSelection]
GO
/****** Object:  StoredProcedure [dbo].[SP_AddUserSkills]    Script Date: 4/2/2019 11:53:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[SP_AddUserSkills]
(@usermail nvarchar(100),
 @skillname nvarchar(100),
 @date date)

 AS
 BEGIN
 DECLARE @skillid bigint,
		 @userid bigint
 SELECT @skillid = ( SELECT SkillId FROM Skills WHERE SkillName=@skillname)
 SELECT @userid = (SELECT UserId from Users WHERE UserMail=@usermail)
 INSERT INTO UserSkills VALUES (@userid,@skillid,@date)
 END
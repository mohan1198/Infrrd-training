USE [TrainingSelection]
 GO

 ALTER PROCEDURE [dbo].[SP_GetUserCount]
 (@usermail nvarchar(100))

 AS
 BEGIN 
 
 DECLARE @skillnumber int=1

 WHILE @skillnumber<=3

 BEGIN
	SELECT US.Skillid, US.Date,Count(US.UserId) as count
	FROM [dbo].[UserSkills] US JOIN Users U
	ON US.UserId=U.UserId
	WHERE US.Skillid=@skillnumber
	GROUP BY US.Skillid,US.Date
	SET @skillnumber=@skillnumber+1
 END
 
 END


 

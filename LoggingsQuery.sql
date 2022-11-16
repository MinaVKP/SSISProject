USE [master]
GO

SELECT [id]
      ,[event]
      ,[computer]
      ,[operator]
      ,[source]
      ,[sourceid]
      ,[executionid]
      ,[starttime]
      ,[endtime]
      ,[datacode]
      ,[databytes]
      ,[message]
  FROM [dbo].[sysssislog]

GO



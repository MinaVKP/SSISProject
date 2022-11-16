USE [DestinationDB]
GO

UPDATE [dbo].[HumanResources.EmployeeDestination]
   SET 
      
		t.[JobTitle] = s.JobTitle
      ,t.[MaritalStatus] = s.MaritalStatus
      ,t.[SalariedFlag] = s.SalariedFlag
      ,t.[VacationHours] = s.VacationHours
      ,t.[SickLeaveHours] = s.SickLeaveHours
      ,t.[Operation] = 'U'
      ,t.[UpdatedDate] = getdate()
     
 WHERE s. Search Conditions, 
GO



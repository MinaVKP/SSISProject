Select * from AdventureWorks2019.HumanResources.EmployeeCopy WHERE BusinessEntityID=3 and BusinessEntityID=5 and BusinessEntityID=6;
Select * from DestinationDB.dbo.[HumanResources.EmployeeDestination] WHERE BusinessEntityID in (3 , 5 , 6);

Select * from AdventureWorks2019.HumanResources.EmployeeCopy;
Select * from DestinationDB.dbo.[HumanResources.EmployeeDestination];

UPDATE AdventureWorks2019.HumanResources.EmployeeCopy SET MaritalStatus='D' WHERE BusinessEntityID in (3 , 5 , 6);

MERGE DestinationDB.dbo.[HumanResources.EmployeeDestination] t
USING AdventureWorks2019.HumanResources.EmployeeCopy s

ON s.BusinessEntityID = t.BusinessEntityID

WHEN MATCHED AND (t.[JobTitle] <> s.JobTitle OR
      t.[MaritalStatus] <> s.MaritalStatus OR
      t.[SalariedFlag] <> s.SalariedFlag OR
      t.[VacationHours] <> s.VacationHours OR
      t.[SickLeaveHours] <> s.SickLeaveHours) 
	  THEN
UPDATE SET

		t.[JobTitle] = s.JobTitle
      ,t.[MaritalStatus] = s.MaritalStatus
      ,t.[SalariedFlag] = s.SalariedFlag
      ,t.[VacationHours] = s.VacationHours
      ,t.[SickLeaveHours] = s.SickLeaveHours
      ,t.[Operation] = 'U'
      ,t.[UpdatedDate] = GETDATE()

WHEN NOT MATCHED 
THEN INSERT 

			([BusinessEntityID]
           ,[NationalIDNumber]
           ,[LoginID]
           ,[OrganizationNode]
           ,[OrganizationLevel]
           ,[JobTitle]
           ,[BirthDate]
           ,[MaritalStatus]
           ,[Gender]
           ,[HireDate]
           ,[SalariedFlag]
           ,[VacationHours]
           ,[SickLeaveHours]
           ,[CurrentFlag]
           ,[rowguid]
           ,[ModifiedDate]
           ,[InsertedDate]
           ,[Operation]
           ,[UpdatedDate]
           ,[Status])
     VALUES
           (s.BusinessEntityID
           ,s.NationalIDNumber
           ,s.LoginID
           ,s.OrganizationNode
           ,s.OrganizationLevel
           ,s.JobTitle
           ,s.BirthDate
           ,s.MaritalStatus
           ,s.Gender
           ,s.HireDate
           ,s.SalariedFlag
           ,s.VacationHours
           ,s.SickLeaveHours
           ,s.CurrentFlag
           ,s.rowguid
           ,s.ModifiedDate
           ,GETDATE()
           ,'I'
           ,NULL
           ,NULL)

WHEN NOT MATCHED BY SOURCE THEN
DELETE; --DELETES ORPHAN RECORDS
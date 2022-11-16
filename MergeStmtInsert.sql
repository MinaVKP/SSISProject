USE [DestinationDB]
GO

INSERT INTO [dbo].[HumanResources.EmployeeDestination]
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
           (<BusinessEntityID, int,>
           ,<NationalIDNumber, nvarchar(15),>
           ,<LoginID, nvarchar(256),>
           ,<OrganizationNode, hierarchyid,>
           ,<OrganizationLevel, smallint,>
           ,<JobTitle, nvarchar(50),>
           ,<BirthDate, date,>
           ,<MaritalStatus, nchar(1),>
           ,<Gender, nchar(1),>
           ,<HireDate, date,>
           ,<SalariedFlag, bit,>
           ,<VacationHours, smallint,>
           ,<SickLeaveHours, smallint,>
           ,<CurrentFlag, bit,>
           ,<rowguid, uniqueidentifier,>
           ,<ModifiedDate, datetime,>
           ,<InsertedDate, datetime,>
           ,<Operation, varchar(2),>
           ,<UpdatedDate, datetime,>
           ,<Status, varchar(10),>)
GO



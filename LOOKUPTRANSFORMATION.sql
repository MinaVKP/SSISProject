TRUNCATE TABLE DestinationDB.dbo.[HumanResources.EmployeeDestination];

Select * from AdventureWorks2019.HumanResources.EmployeeCopy;
Select * from DestinationDB.dbo.[HumanResources.EmployeeDestination];

TRUNCATE TABLE DestinationDB.dbo.[HumanResources.EmployeeDestination];


IF S.EmpNO <> Dest.EmpNo THEN INSERT the source record into destination system;

IF S.EmpNo == Dest.EmpNo AND (s.MaritalStatus<>dest.MaritalStatus)
THEN UPDATE The Delta/Incremental changes to Destination System;

UPDATE DestinationDB.dbo.[HumanResources.EmployeeDestination] 
SET MaritalStatus=?,JobTitle=?,SalariedFlag=?,SickLeaveHours=?, VacationHours=?
WHERE BusinessEntityID = 1;
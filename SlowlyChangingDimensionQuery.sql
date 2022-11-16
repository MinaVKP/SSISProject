
Select * into AdventureWorks2019.HumanResources.EmployeeCopy
from AdventureWorks2019.HumanResources.Employee;

Select * into DestinationDB.dbo.[HumanResources.EmployeeDestination]
from AdventureWorks2019.HumanResources.EmployeeCopy;


Alter Table DestinationDB.dbo.[HumanResources.EmployeeDestination]
Add InsertedDate datetime, Operation varchar(2), UpdatedDate Datetime,[Status] varchar(10);

Select * from AdventureWorks2019.HumanResources.EmployeeCopy;
Select * from DestinationDB.dbo.[HumanResources.EmployeeDestination];

-- Truncate Table DestinationDB.dbo.[HumanResources.EmployeeDestination];

Update AdventureWorks2019.HumanResources.EmployeeCopy
SET  MaritalStatus = 'D' Where BusinessEntityID=6;




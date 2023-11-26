/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [DepartmentID]
      ,[Name]
      ,[GroupName]
      ,[ModifiedDate]
  FROM [AdventureWorks2019].[HumanResources].[Department]
  WHERE year([ModifiedDate]) = '2008';

  /****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [BusinessEntityID]
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
  FROM [AdventureWorks2019].[HumanResources].[Employee]
  WHERE year([BirthDate]) = '1969';

  /****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [BusinessEntityID]
      ,[DepartmentID]
      ,[ShiftID]
      ,[StartDate]
      ,[EndDate]
      ,[ModifiedDate]
  FROM [AdventureWorks2019].[HumanResources].[EmployeeDepartmentHistory]
  WHERE year([ModifiedDate]) = '2009';

  /****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [BusinessEntityID]
      ,[RateChangeDate]
      ,[Rate]
      ,[PayFrequency]
      ,[ModifiedDate]
  FROM [AdventureWorks2019].[HumanResources].[EmployeePayHistory]
  WHERE year([RateChangeDate]) = '2008';

  /****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [JobCandidateID]
      ,[BusinessEntityID]
      ,[Resume]
      ,[ModifiedDate]
  FROM [AdventureWorks2019].[HumanResources].[JobCandidate]
  WHERE year([ModifiedDate]) = '2007';

  /****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [AddressID]
      ,[AddressLine1]
      ,[AddressLine2]
      ,[City]
      ,[StateProvinceID]
      ,[PostalCode]
      ,[SpatialLocation]
      ,[rowguid]
      ,[ModifiedDate]
  FROM [AdventureWorks2019].[Person].[Address]
  WHERE year([ModifiedDate]) = '2008';

  /****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [BusinessEntityID]
      ,[rowguid]
      ,[ModifiedDate]
  FROM [AdventureWorks2019].[Person].[BusinessEntity]
  WHERE YEAR([ModifiedDate]) = '2017';

  /****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [BusinessEntityID]
      ,[AddressID]
      ,[AddressTypeID]
      ,[rowguid]
      ,[ModifiedDate]
  FROM [AdventureWorks2019].[Person].[BusinessEntityAddress]
  WHERE  year([ModifiedDate]) = '2014';

  /****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [BusinessEntityID]
      ,[PersonID]
      ,[ContactTypeID]
      ,[rowguid]
      ,[ModifiedDate]
  FROM [AdventureWorks2019].[Person].[BusinessEntityContact]
  WHERE year([ModifiedDate]) = '2017'
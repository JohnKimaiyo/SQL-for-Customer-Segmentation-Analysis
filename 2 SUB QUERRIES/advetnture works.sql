/****** Script for SelectTopNRows command from SSMS  ******/
SELECT  [JobTitle]
  FROM [AdventureWorks2019].[HumanResources].[Employee]
  WHERE VacationHours =(SELECT Max(VacationHours) from [AdventureWorks2019].[HumanResources].[Employee] );
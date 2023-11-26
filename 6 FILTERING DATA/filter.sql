/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [DepartmentID]
      ,[Name]
      ,[GroupName]
      ,[ModifiedDate]
  FROM [AdventureWorks2019].[HumanResources].[Department]
  WHERE year([ModifiedDate]) = '2008';
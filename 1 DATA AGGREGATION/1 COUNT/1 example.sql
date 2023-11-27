/****** Script for SelectTopNRows command from SSMS  ******/
SELECT COUNT([MaritalStatus])  AS TotalNumberofMarried_People
  FROM [AdventureWorks2019].[HumanResources].[Employee]
  WHERE [MaritalStatus] = 'M'
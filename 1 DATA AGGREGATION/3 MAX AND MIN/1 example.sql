/****** Script for SelectTopNRows command from SSMS  ******/
SELECT MAX([VacationHours]) AS Maximum_Vacation_Hours,
      MIN([VacationHours])  AS Minimum_Vacation_Hours
  FROM [AdventureWorks2019].[HumanResources].[Employee]
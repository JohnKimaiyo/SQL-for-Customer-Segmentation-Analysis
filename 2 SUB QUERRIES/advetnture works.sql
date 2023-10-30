/****** Script for SelectTopNRows command from SSMS  ******/
SELECT  [JobTitle]
  FROM [AdventureWorks2019].[HumanResources].[Employee]
  WHERE VacationHours =(SELECT Max(VacationHours) from [AdventureWorks2019].[HumanResources].[Employee] );

  -- select date with highest exchae rate ---
  /****** Script for SelectTopNRows command from SSMS  ******/
SELECT  [BusinessEntityID]
      ,[RateChangeDate]
      ,[Rate]
      ,[PayFrequency]
      ,[ModifiedDate]
  FROM [AdventureWorks2019].[HumanResources].[EmployeePayHistory]
  WHERE [Rate]  =  (SELECT Max(Rate)   FROM [AdventureWorks2019].[HumanResources].[EmployeePayHistory])

  -- select product with the highest cost rate --
  /****** Script for SelectTopNRows command from SSMS  ******/
SELECT [LocationID]
      ,[Name]
      ,[CostRate]
      ,[Availability]
      ,[ModifiedDate]
  FROM [AdventureWorks2019].[Production].[Location]
  WHERE [CostRate] = (SELECT Max(CostRate)    FROM [AdventureWorks2019].[Production].[Location]);

  -- select date with the hightest standardcost ---
  SELECT  [ProductID]
      ,[StartDate]
      ,[EndDate]
      ,[StandardCost]
      ,[ModifiedDate]
  FROM [AdventureWorks2019].[Production].[ProductCostHistory]
  WHERE  [StandardCost] = (SELECT Max([StandardCost]) FROM [AdventureWorks2019].[Production].[ProductCostHistory]      )

  -- select prodtc wth the higtest quantity --

  SELECT TOP (1000) [ProductID]
      ,[LocationID]
      ,[Shelf]
      ,[Bin]
      ,[Quantity]
      ,[rowguid]
      ,[ModifiedDate]
  FROM [AdventureWorks2019].[Production].[ProductInventory]
  WHERE Quantity = (SELECT Max(Quantity)  FROM [AdventureWorks2019].[Production].[ProductInventory]    )
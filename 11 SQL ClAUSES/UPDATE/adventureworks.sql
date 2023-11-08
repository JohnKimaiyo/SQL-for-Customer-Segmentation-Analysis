/****** Script for SelectTopNRows command from SSMS  ******/
update [HumanResources].Employee
set VacationHours = VacationHours + 10;


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


  /****** Script for SelectTopNRows command from SSMS  ******/
UPDATE [HumanResources].EmployeePayHistory

SET Rate = Rate +10

SELECT TOP (1000) [BusinessEntityID]
      ,[RateChangeDate]
      ,[Rate]
      ,[PayFrequency]
      ,[ModifiedDate]
  FROM [AdventureWorks2019].[HumanResources].[EmployeePayHistory]

  -- /****** Script for SelectTopNRows command from SSMS  ******/
UPDATE [Production].Location
set  CostRate = CostRate + 10;
SELECT TOP (1000) [LocationID]
      ,[Name]
      ,[CostRate]
      ,[Availability]
      ,[ModifiedDate]
  FROM [AdventureWorks2019].[Production].[Location]

  /****** Script for SelectTopNRows command from SSMS  ******/
update [Production].[Product]
set SafetyStockLevel = SafetyStockLevel + 100



SELECT TOP (1000) [ProductID]
      ,[Name]
      ,[ProductNumber]
      ,[MakeFlag]
      ,[FinishedGoodsFlag]
      ,[Color]
      ,[SafetyStockLevel]
      ,[ReorderPoint]
      ,[StandardCost]
      ,[ListPrice]
      ,[Size]
      ,[SizeUnitMeasureCode]
      ,[WeightUnitMeasureCode]
      ,[Weight]
      ,[DaysToManufacture]
      ,[ProductLine]
      ,[Class]
      ,[Style]
      ,[ProductSubcategoryID]
      ,[ProductModelID]
      ,[SellStartDate]
      ,[SellEndDate]
      ,[DiscontinuedDate]
      ,[rowguid]
      ,[ModifiedDate]
  FROM [AdventureWorks2019].[Production].[Product]
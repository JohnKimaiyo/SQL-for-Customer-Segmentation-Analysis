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

  -- select product id with hightest list price --
  SELECT TOP (1000) [ProductID]
      ,[StartDate]
      ,[EndDate]
      ,[ListPrice]
      ,[ModifiedDate]
  FROM [AdventureWorks2019].[Production].[ProductListPriceHistory]
  WHERE ListPrice =  (SELECT Max( ListPrice)   FROM [AdventureWorks2019].[Production].[ProductListPriceHistory]    )

  -- select prouct with the hsted actual cost --
  SELECT TOP (1000) [TransactionID]
      ,[ProductID]
      ,[ReferenceOrderID]
      ,[ReferenceOrderLineID]
      ,[TransactionDate]
      ,[TransactionType]
      ,[Quantity]
      ,[ActualCost]
      ,[ModifiedDate]
  FROM [AdventureWorks2019].[Production].[TransactionHistoryArchive]
  WHERE ActualCost =(SELECT Max(ActualCost)   FROM [AdventureWorks2019].[Production].[TransactionHistoryArchive] );

  -- Select product with the histes order qty --
  SELECT TOP (1000) [WorkOrderID]
      ,[ProductID]
      ,[OrderQty]
      ,[StockedQty]
      ,[ScrappedQty]
      ,[StartDate]
      ,[EndDate]
      ,[DueDate]
      ,[ScrapReasonID]
      ,[ModifiedDate]
  FROM [AdventureWorks2019].[Production].[WorkOrder]
  WHERE OrderQty=(SELECT MAX(OrderQty)    FROM [AdventureWorks2019].[Production].[WorkOrder]  )

  -- select prodcut with histest planned cost --
  SELECT TOP (1000) [WorkOrderID]
      ,[ProductID]
      ,[OperationSequence]
      ,[LocationID]
      ,[ScheduledStartDate]
      ,[ScheduledEndDate]
      ,[ActualStartDate]
      ,[ActualEndDate]
      ,[ActualResourceHrs]
      ,[PlannedCost]
      ,[ActualCost]
      ,[ModifiedDate]
  FROM [AdventureWorks2019].[Production].[WorkOrderRouting]
  WHERE PlannedCost = (SELECT Max(PlannedCost)    FROM [AdventureWorks2019].[Production].[WorkOrderRouting]  );

  -- product with the highest standard price --
  SELECT TOP (1000) [ProductID]
      ,[BusinessEntityID]
      ,[AverageLeadTime]
      ,[StandardPrice]
      ,[LastReceiptCost]
      ,[LastReceiptDate]
      ,[MinOrderQty]
      ,[MaxOrderQty]
      ,[OnOrderQty]
      ,[UnitMeasureCode]
      ,[ModifiedDate]
  FROM [AdventureWorks2019].[Purchasing].[ProductVendor]
  WHERE StandardPrice = (SELECT MAX(StandardPrice) FROM [AdventureWorks2019].[Purchasing].[ProductVendor] )


  -- selet product id with the hishets stocked qty --
  SELECT TOP (1000) [PurchaseOrderID]
      ,[PurchaseOrderDetailID]
      ,[DueDate]
      ,[OrderQty]
      ,[ProductID]
      ,[UnitPrice]
      ,[LineTotal]
      ,[ReceivedQty]
      ,[RejectedQty]
      ,[StockedQty]
      ,[ModifiedDate]
  FROM [AdventureWorks2019].[Purchasing].[PurchaseOrderDetail]
  WHERE StockedQty = (SELECT MAX(StockedQty)   FROM [AdventureWorks2019].[Purchasing].[PurchaseOrderDetail]     );

  --  select vendor with the highest  import bill --
  SELECT TOP (1000) [PurchaseOrderID]
      ,[RevisionNumber]
      ,[Status]
      ,[EmployeeID]
      ,[VendorID]
      ,[ShipMethodID]
      ,[OrderDate]
      ,[ShipDate]
      ,[SubTotal]
      ,[TaxAmt]
      ,[Freight]
      ,[TotalDue]
      ,[ModifiedDate]
  FROM [AdventureWorks2019].[Purchasing].[PurchaseOrderHeader]
  WHERE TotalDue = (SELECT MAX(TotalDue)   FROM [AdventureWorks2019].[Purchasing].[PurchaseOrderHeader]   );

-- select shipping companing with the hightest shipping cost --
/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [ShipMethodID]
      ,[Name]
      ,[ShipBase]
      ,[ShipRate]
      ,[rowguid]
      ,[ModifiedDate]
  FROM [AdventureWorks2019].[Purchasing].[ShipMethod]
  WHERE ShipBase =(SELECT MAX(ShipBase)    FROM [AdventureWorks2019].[Purchasing].[ShipMethod] );



-- select year with the longest expiry date --
SELECT TOP (1000) [CreditCardID]
      ,[CardType]
      ,[CardNumber]
      ,[ExpMonth]
      ,[ExpYear]
      ,[ModifiedDate]
  FROM [AdventureWorks2019].[Sales].[CreditCard]
  WHERE ExpYear = (SELECT MAX(ExpYear )      FROM [AdventureWorks2019].[Sales].[CreditCard]   );


-- select currency with the weakest rate agaisnt USD --
/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [CurrencyRateID]
      ,[CurrencyRateDate]
      ,[FromCurrencyCode]
      ,[ToCurrencyCode]
      ,[AverageRate]
      ,[EndOfDayRate]
      ,[ModifiedDate]
  FROM [AdventureWorks2019].[Sales].[CurrencyRate]

  WHERE AverageRate = (SELECT MAX(AverageRate)   FROM [AdventureWorks2019].[Sales].[CurrencyRate]   );


-- select country with the hishhets sales year --
SELECT TOP (1000) [TerritoryID]
      ,[Name]
      ,[CountryRegionCode]
      ,[Group]
      ,[SalesYTD]
      ,[SalesLastYear]
      ,[CostYTD]
      ,[CostLastYear]
      ,[rowguid]
      ,[ModifiedDate]
  FROM [AdventureWorks2019].[Sales].[SalesTerritory]
  WHERE SalesLastYear = (SELECT MAX(SalesLastYear)    FROM [AdventureWorks2019].[Sales].[SalesTerritory])

  -- select naotion id number with above average vataion hours --
SELECT
      [NationalIDNumber]

      ,[VacationHours]
   
  FROM [AdventureWorks2019].[HumanResources].[Employee]
  WHERE VacationHours < (select avg(VacationHours)   FROM [AdventureWorks2019].[HumanResources].[Employee]   )

  -- individuals with abive averagre vacation hours --
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
  WHERE VacationHours > (SELECT AVG(VacationHours)  FROM [AdventureWorks2019].[HumanResources].[Employee]  )

  --  avaergae vacation hours --
  SELECT AVG(VacationHours)

  FROM [AdventureWorks2019].[HumanResources].[Employee]

-- select onlly males --
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
  WHERE MaritalStatus IN (SELECT MaritalStatus
  
   FROM [AdventureWorks2019].[HumanResources].[Employee]
  WHERE MaritalStatus = 'M'
  )

  -- select average costrate --
  /****** Script for SelectTopNRows command from SSMS  ******/
SELECT AVG(CostRate) [LocationID]

  FROM [AdventureWorks2019].[Production].[Location]


-- select greater than cost rate --
  SELECT TOP (1000) [LocationID]
      ,[Name]
      ,[CostRate]
      ,[Availability]
      ,[ModifiedDate]
  FROM [AdventureWorks2019].[Production].[Location]
  WHERE CostRate > (SELECT AVG(CostRate)     FROM [AdventureWorks2019].[Production].[Location] )

  -- avergare stoc level
  /****** Script for SelectTopNRows command from SSMS  ******/
SELECT AVG(SafetyStockLevel)
  FROM [AdventureWorks2019].[Production].[Product]

  -- select  above  avg safety levels -- 
  /****** Script for SelectTopNRows command from SSMS  ******/
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
  WHERE SafetyStockLevel<( SELECT AVG(SafetyStockLevel)   FROM [AdventureWorks2019].[Production].[Product]  )

  -- selct averager  standard cost --
  SELECT AVG (StandardCost) 
  FROM [AdventureWorks2019].[Production].[ProductCostHistory]


  /****** Select above averagre price ******/
SELECT TOP (1000) [ProductID]
      ,[StartDate]
      ,[EndDate]
      ,[StandardCost]
      ,[ModifiedDate]
  FROM [AdventureWorks2019].[Production].[ProductCostHistory]
  WHERE StandardCost >  (SELECT AVG (StandardCost)  FROM [AdventureWorks2019].[Production].[ProductCostHistory]   )

  -- select avaeragre list price --
  SELECT AVG (ListPrice)
  FROM [AdventureWorks2019].[Production].[ProductListPriceHistory]


  -- select  greater than average list price
  /****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [ProductID]
      ,[StartDate]
      ,[EndDate]
      ,[ListPrice]
      ,[ModifiedDate]
  FROM [AdventureWorks2019].[Production].[ProductListPriceHistory]
  WHERE ListPrice > (SELECT AVG(ListPrice)    FROM [AdventureWorks2019].[Production].[ProductListPriceHistory]   )


  -- selct avereatgre actual coost
  /****** Script for SelectTopNRows command from SSMS  ******/
SELECT  AVG(ActualCost)
      
  FROM [AdventureWorks2019].[Production].[TransactionHistory]


  -- select above average actual cost --
  /****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [TransactionID]
      ,[ProductID]
      ,[ReferenceOrderID]
      ,[ReferenceOrderLineID]
      ,[TransactionDate]
      ,[TransactionType]
      ,[Quantity]
      ,[ActualCost]
      ,[ModifiedDate]
  FROM [AdventureWorks2019].[Production].[TransactionHistoryArchive]
  WHERE ActualCost >(SELECT AVG(ActualCost) FROM [AdventureWorks2019].[Production].[TransactionHistoryArchive]    )

  --select avg ordered qty --
  /****** Script for SelectTopNRows command from SSMS  ******/
SELECT AVG(OrderQty) [WorkOrderID]
      
  FROM [AdventureWorks2019].[Production].[WorkOrder]
  

  -- SELECT ORDER QTY > AVG
  SELECT TOP (1000) [WorkOrderID]
      ,[ProductID]
      ,[OrderQty]
      ,[StockedQty]
      ,[ScrappedQty]
      ,[StartDate]
      ,[EndDate]
      ,[DueDate]
      ,[ScrapReasonID]
      ,[ModifiedDate]
  FROM [AdventureWorks2019].[Production].[WorkOrder]
  WHERE OrderQty > (SELECT AVG(OrderQty) FROM [AdventureWorks2019].[Production].[WorkOrder]);

  -- slect avg operation sequence --

  SELECT  AVG(OperationSequence) 
     
  FROM [AdventureWorks2019].[Production].[WorkOrderRouting]

--  selctt operational sequence above average
  SELECT TOP (1000) [WorkOrderID]
      ,[ProductID]
      ,[OperationSequence]
      ,[LocationID]
      ,[ScheduledStartDate]
      ,[ScheduledEndDate]
      ,[ActualStartDate]
      ,[ActualEndDate]
      ,[ActualResourceHrs]
      ,[PlannedCost]
      ,[ActualCost]
      ,[ModifiedDate]
  FROM [AdventureWorks2019].[Production].[WorkOrderRouting]
  WHERE OperationSequence >(SELECT AVG(OperationSequence) FROM  [AdventureWorks2019].[Production].[WorkOrderRouting] );

  -- select avg price
  /****** Script for SelectTopNRows command from SSMS  ******/
SELECT AVG(StandardPrice) [ProductID]
      
  FROM [AdventureWorks2019].[Purchasing].[ProductVendor]


  /****** Select standard price above average ******/
SELECT TOP (1000) [ProductID]
      ,[BusinessEntityID]
      ,[AverageLeadTime]
      ,[StandardPrice]
      ,[LastReceiptCost]
      ,[LastReceiptDate]
      ,[MinOrderQty]
      ,[MaxOrderQty]
      ,[OnOrderQty]
      ,[UnitMeasureCode]
      ,[ModifiedDate]
  FROM [AdventureWorks2019].[Purchasing].[ProductVendor]
  WHERE StandardPrice >(SELECT AVG(StandardPrice)   FROM [AdventureWorks2019].[Purchasing].[ProductVendor]   )


  -- select the average price --
  /****** Script for SelectTopNRows command from SSMS  ******/
SELECT AVG(UnitPrice) 
  FROM [AdventureWorks2019].[Purchasing].[PurchaseOrderDetail]

  -- select order qty > avg price
  SELECT TOP (1000) [PurchaseOrderID]
      ,[PurchaseOrderDetailID]
      ,[DueDate]
      ,[OrderQty]
      ,[ProductID]
      ,[UnitPrice]
      ,[LineTotal]
      ,[ReceivedQty]
      ,[RejectedQty]
      ,[StockedQty]
      ,[ModifiedDate]
  FROM [AdventureWorks2019].[Purchasing].[PurchaseOrderDetail]
  WHERE UnitPrice >( SELECT AVG(UnitPrice)  FROM [AdventureWorks2019].[Purchasing].[PurchaseOrderDetail]   )

  -- select avg subtotal 
  SELECT AVG (SubTotal)
      
  FROM [AdventureWorks2019].[Purchasing].[PurchaseOrderHeader]

  -- select subtotal > avg
  /****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [PurchaseOrderID]
      ,[RevisionNumber]
      ,[Status]
      ,[EmployeeID]
      ,[VendorID]
      ,[ShipMethodID]
      ,[OrderDate]
      ,[ShipDate]
      ,[SubTotal]
      ,[TaxAmt]
      ,[Freight]
      ,[TotalDue]
      ,[ModifiedDate]
  FROM [AdventureWorks2019].[Purchasing].[PurchaseOrderHeader]
  WHERE SubTotal >(SELECT AVG(SubTotal)  FROM [AdventureWorks2019].[Purchasing].[PurchaseOrderHeader]   )


  -- selecta vg   expiry year
  /****** Script for SelectTopNRows command from SSMS  ******/
SELECT AVG(ExpYear) 
  FROM [AdventureWorks2019].[Sales].[CreditCard]

  -- select avg end year average rate
  /****** Script for SelectTopNRows command from SSMS  ******/
SELECT  AVG(EndOfDayRate)
  FROM [AdventureWorks2019].[Sales].[CurrencyRate]

  -- select eend of year rate >  avg
  SELECT TOP (1000) [CurrencyRateID]
      ,[CurrencyRateDate]
      ,[FromCurrencyCode]
      ,[ToCurrencyCode]
      ,[AverageRate]
      ,[EndOfDayRate]
      ,[ModifiedDate]
  FROM [AdventureWorks2019].[Sales].[CurrencyRate]

  WHERE EndOfDayRate >(SELECT AVG(EndOfDayRate)   FROM [AdventureWorks2019].[Sales].[CurrencyRate]  )

  -- selectavg  unit price
  SELECT AVG (UnitPrice)
      
  FROM [AdventureWorks2019].[Sales].[SalesOrderDetail]

  -- select unit price > avg price
  SELECT TOP (1000) [SalesOrderID]
      ,[SalesOrderDetailID]
      ,[CarrierTrackingNumber]
      ,[OrderQty]
      ,[ProductID]
      ,[SpecialOfferID]
      ,[UnitPrice]
      ,[UnitPriceDiscount]
      ,[LineTotal]
      ,[rowguid]
      ,[ModifiedDate]
  FROM [AdventureWorks2019].[Sales].[SalesOrderDetail]
  WHERE UnitPrice > (SELECT AVG(UnitPrice)   FROM [AdventureWorks2019].[Sales].[SalesOrderDetail] )
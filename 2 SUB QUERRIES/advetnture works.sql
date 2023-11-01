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
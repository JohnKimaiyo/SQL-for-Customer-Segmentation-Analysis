/****** Script for SelectTopNRows command from SSMS  ******/
update [HumanResources].Employee
set VacationHours = VacationHours + 10;


SELECT TOP (1000)
    [BusinessEntityID]
      , [NationalIDNumber]
      , [LoginID]
      , [OrganizationNode]
      , [OrganizationLevel]
      , [JobTitle]
      , [BirthDate]
      , [MaritalStatus] 
      , [Gender]
      , [HireDate]
      , [SalariedFlag]
      , [VacationHours]
      , [SickLeaveHours]
      , [CurrentFlag]
      , [rowguid]
      , [ModifiedDate]
FROM [AdventureWorks2019].[HumanResources].[Employee]


/****** Script for SelectTopNRows command from SSMS  ******/
UPDATE [HumanResources].EmployeePayHistory

SET Rate = Rate +10

SELECT TOP (1000)
    [BusinessEntityID]
      , [RateChangeDate]
      , [Rate]
      , [PayFrequency]
      , [ModifiedDate]
FROM [AdventureWorks2019].[HumanResources].[EmployeePayHistory]

-- /****** Script for SelectTopNRows command from SSMS  ******/
UPDATE [Production].Location
set  CostRate = CostRate + 10;
SELECT TOP (1000)
    [LocationID]
      , [Name]
      , [CostRate]
      , [Availability]
      , [ModifiedDate]
FROM [AdventureWorks2019].[Production].[Location]

/****** Script for SelectTopNRows command from SSMS  ******/
update [Production].[Product]
set SafetyStockLevel = SafetyStockLevel + 100



SELECT TOP (1000)
    [ProductID]
      , [Name]
      , [ProductNumber]
      , [MakeFlag]
      , [FinishedGoodsFlag]
      , [Color]
      , [SafetyStockLevel]
      , [ReorderPoint]
      , [StandardCost]
      , [ListPrice]
      , [Size]
      , [SizeUnitMeasureCode]
      , [WeightUnitMeasureCode]
      , [Weight]
      , [DaysToManufacture]
      , [ProductLine]
      , [Class]
      , [Style]
      , [ProductSubcategoryID]
      , [ProductModelID]
      , [SellStartDate]
      , [SellEndDate]
      , [DiscontinuedDate]
      , [rowguid]
      , [ModifiedDate]
FROM [AdventureWorks2019].[Production].[Product]

/****** Script for SelectTopNRows command from SSMS  ******/
update [Production].[ProductCostHistory]
set StandardCost = StandardCost + 10;




SELECT TOP (1000)
    [ProductID]
      , [StartDate]
      , [EndDate]
      , [StandardCost]
      , [ModifiedDate]
FROM [AdventureWorks2019].[Production].[ProductCostHistory]


/****** Script for SelectTopNRows command from SSMS  ******/
update [Production].[ProductListPriceHistory]
set ListPrice = ListPrice + 10;

SELECT TOP (1000)
    [ProductID]
      , [StartDate]
      , [EndDate]
      , [ListPrice]
      , [ModifiedDate]
FROM [AdventureWorks2019].[Production].[ProductListPriceHistory]


/****** Script for SelectTopNRows command from SSMS  ******/
update [Production].[TransactionHistoryArchive]
SET ActualCost = ActualCost +50;


SELECT TOP (1000)
    [TransactionID]
      , [ProductID]
      , [ReferenceOrderID]
      , [ReferenceOrderLineID]
      , [TransactionDate]
      , [TransactionType]
      , [Quantity]
      , [ActualCost]
      , [ModifiedDate]
FROM [AdventureWorks2019].[Production].[TransactionHistory]


/****** Script for SelectTopNRows command from SSMS  ******/
update [Production].[WorkOrderRouting]
set PlannedCost = PlannedCost + 100;

SELECT TOP (1000)
    [WorkOrderID]
      , [ProductID]
      , [OperationSequence]
      , [LocationID]
      , [ScheduledStartDate]
      , [ScheduledEndDate]
      , [ActualStartDate]
      , [ActualEndDate]
      , [ActualResourceHrs]
      , [PlannedCost]
      , [ActualCost]
      , [ModifiedDate]
FROM [AdventureWorks2019].[Production].[WorkOrderRouting]

/****** Script for SelectTopNRows command from SSMS  ******/
update [Purchasing].[ProductVendor]
set StandardPrice = StandardPrice + 500;

SELECT TOP (1000)
    [ProductID]
      , [BusinessEntityID]
      , [AverageLeadTime]
      , [StandardPrice]
      , [LastReceiptCost]
      , [LastReceiptDate]
      , [MinOrderQty]
      , [MaxOrderQty]
      , [OnOrderQty]
      , [UnitMeasureCode]
      , [ModifiedDate]
FROM [AdventureWorks2019].[Purchasing].[ProductVendor]


/****** Script for SelectTopNRows command from SSMS  ******/
update [Purchasing].[PurchaseOrderDetail]
set UnitPrice = UnitPrice + 100;




SELECT TOP (1000)
    [PurchaseOrderID]
      , [PurchaseOrderDetailID]
      , [DueDate]
      , [OrderQty]
      , [ProductID]
      , [UnitPrice]
      , [LineTotal]
      , [ReceivedQty]
      , [RejectedQty]
      , [StockedQty]
      , [ModifiedDate]
FROM [AdventureWorks2019].[Purchasing].[PurchaseOrderDetail]


/****** Script for SelectTopNRows command from SSMS  ******/
update [Purchasing].[PurchaseOrderHeader]
set SubTotal = SubTotal + 1000;

SELECT TOP (1000)
    [PurchaseOrderID]
      , [RevisionNumber]
      , [Status]
      , [EmployeeID]
      , [VendorID]
      , [ShipMethodID]
      , [OrderDate]
      , [ShipDate]
      , [SubTotal]
      , [TaxAmt]
      , [Freight]
      , [TotalDue]
      , [ModifiedDate]
FROM [AdventureWorks2019].[Purchasing].[PurchaseOrderHeader]

/****** Script for SelectTopNRows command from SSMS  ******/
update [Sales].CurrencyRate
set AverageRate = AverageRate +10;


SELECT TOP (1000)
    [CurrencyRateID]
      , [CurrencyRateDate]
      , [FromCurrencyCode]
      , [ToCurrencyCode]
      , [AverageRate]
      , [EndOfDayRate]
      , [ModifiedDate]
FROM [AdventureWorks2019].[Sales].[CurrencyRate]

update [Sales].[SalesOrderDetail]
set UnitPrice = UnitPrice + 100;


SELECT TOP (1000)
    [SalesOrderID]
      , [SalesOrderDetailID]
      , [CarrierTrackingNumber]
      , [OrderQty]
      , [ProductID]
      , [SpecialOfferID]
      , [UnitPrice]
      , [UnitPriceDiscount]
      , [LineTotal]
      , [rowguid]
      , [ModifiedDate]
FROM [AdventureWorks2019].[Sales].[SalesOrderDetail]


/****** Script for SelectTopNRows command from SSMS  ******/
update [Sales].SalesOrderHeader

set Freight = Freight + 1000000;



SELECT TOP (1000)
    [SalesOrderID]
      , [RevisionNumber]
      , [OrderDate]
      , [DueDate]
      , [ShipDate]
      , [Status]
      , [OnlineOrderFlag]
      , [SalesOrderNumber]
      , [PurchaseOrderNumber]
      , [AccountNumber]
      , [CustomerID]
      , [SalesPersonID]
      , [TerritoryID]
      , [BillToAddressID]
      , [ShipToAddressID]
      , [ShipMethodID]
      , [CreditCardID]
      , [CreditCardApprovalCode]
      , [CurrencyRateID]
      , [SubTotal]
      , [TaxAmt]
      , [Freight]
      , [TotalDue]
      , [Comment]
      , [rowguid]
      , [ModifiedDate]
FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]
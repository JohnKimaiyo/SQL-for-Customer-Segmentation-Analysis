-- select prodcut id withn the most quantity --
SELECT TOP (1000) [OrderID]
      ,[ProductID],
    [Quantity]
  FROM [Northwinds Database].[dbo].[Order Details]
  WHERE Quantity=(select max(Quantity)    FROM [Northwinds Database].[dbo].[Order Details] )

  -- select product name with highest reorder level --- 
  SELECT TOP (1000) [ProductID]
      ,[ProductName]
      
      ,[ReorderLevel]
     
  FROM [Northwinds Database].[dbo].[Products]
  WHERE ReorderLevel=(SELECT MAX(ReorderLevel)FROM [Northwinds Database].[dbo].[Products]   )
-- select prodcut id withn the most quantity --
SELECT TOP (1000) [OrderID]
      ,[ProductID],
    [Quantity]
  FROM [Northwinds Database].[dbo].[Order Details]
  WHERE Quantity=(select max(Quantity)    FROM [Northwinds Database].[dbo].[Order Details] )
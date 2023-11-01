-- select billingcity  with highest total ---
SELECT  
      [BillingCity]
   
      ,[Total]
  FROM [Chinock Database].[dbo].[Invoice]
  WHERE Total=(SELECT Max(Total)    FROM [Chinock Database].[dbo].[Invoice]  );

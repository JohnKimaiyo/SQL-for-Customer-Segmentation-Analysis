-- selct salry greater than the avaerage --
SELECT TOP (1000) [id]
      ,[name]
      ,[role]
      ,[wage]
      ,[country]
  FROM [freecodecamp dataset].[dbo].[Sheet1$]

  WHERE wage > (SELECT   AVG(wage) FROM [freecodecamp dataset].[dbo].[Sheet1$] )

  -- salary greater than averaget salart in usa --
  /****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [id]
      ,[name]
      ,[role]
      ,[wage]
      ,[country]
  FROM [freecodecamp dataset].[dbo].[Sheet1$]
  WHERE country IN (SELECT country
    FROM [freecodecamp dataset].[dbo].[Sheet1$]
  WHERE country = 'USA');
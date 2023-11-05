-- selct salry greater than the avaerage --
SELECT TOP (1000) [id]
      ,[name]
      ,[role]
      ,[wage]
      ,[country]
  FROM [freecodecamp dataset].[dbo].[Sheet1$]

  WHERE wage > (SELECT   AVG(wage) FROM [freecodecamp dataset].[dbo].[Sheet1$] )
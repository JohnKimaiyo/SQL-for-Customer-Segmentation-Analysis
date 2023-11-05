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


  /****** select salary in india ******/
SELECT TOP (1000) [id]
      ,[name]
      ,[role]
      ,[wage]
      ,[country]
  FROM [freecodecamp dataset].[dbo].[Sheet1$]
  WHERE country IN (SELECT country
  FROM [freecodecamp dataset].[dbo].[Sheet1$]
  WHERE country =  'India'
  )
-- select salary in Nigeria --
SELECT TOP (1000) [id]
      ,[name]
      ,[role]
      ,[wage]
      ,[country]
  FROM [freecodecamp dataset].[dbo].[Sheet1$]
  WHERE country IN (SELECT  country
 FROM [freecodecamp dataset].[dbo].[Sheet1$]

  WHERE country = 'Nigeria'
  );
-- select salary in ghana only --
  SELECT TOP (1000) [id]
      ,[name]
      ,[role]
      ,[wage]
      ,[country]
  FROM [freecodecamp dataset].[dbo].[Sheet1$]
  WHERE country IN (SELECT country
    FROM [freecodecamp dataset].[dbo].[Sheet1$]
  WHERE country = 'Ghana'

  )

-- select salary from Ukraine
  SELECT TOP (1000) [id]
      ,[name]
      ,[role]
      ,[wage]
      ,[country]
  FROM [freecodecamp dataset].[dbo].[Sheet1$]
  WHERE country IN(SELECT country
  
   FROM [freecodecamp dataset].[dbo].[Sheet1$]
  WHERE country = 'Ukraine'
  )


  -- select salary  from cameroon --

  SELECT TOP (1000) [id]
      ,[name]
      ,[role]
      ,[wage]
      ,[country]
  FROM [freecodecamp dataset].[dbo].[Sheet1$]
  WHERE country IN (SELECT country
   FROM [freecodecamp dataset].[dbo].[Sheet1$]
  WHERE country = 'Cameroon'
  
  );


  -- select by name --
  SELECT TOP (1000) [id]
      ,[name]
      ,[role]
      ,[wage]
      ,[country]
  FROM [freecodecamp dataset].[dbo].[Sheet1$]
  WHERE name IN('Dexter Rumi',   'Olivie Veer ',  ' Gyasi Sana');
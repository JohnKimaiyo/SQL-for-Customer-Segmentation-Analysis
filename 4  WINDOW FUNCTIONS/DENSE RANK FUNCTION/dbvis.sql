--The DENSE_RANK() function assigns a rank to each row within a window, with ties receiving the same rank and the next rank being consecutive
/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [id]
      ,[name]
      ,[score],
	  DENSE_RANK() OVER(Order By score DESC) as rank
  FROM [dbvis database].[dbo].[feb_exam_scores]


  /****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [id]
      ,[name]
      ,[score]
	  ,DENSE_RANK() OVER(Order By score DESC) as rank
  FROM [dbvis database].[dbo].[mar_exam_scores]


  /****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [id]
      ,[name]
      ,[score]
	  ,DENSE_RANK() OVER(Order By score DESC) as rank
  FROM [dbvis database].[dbo].[apr_exam_scores]

  /****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [id]
      ,[name]
      ,[score]
	  ,DENSE_RANK() OVER(Order By score DESC) as rank
  FROM [dbvis database].[dbo].[may_exam_scores]


  /****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [id]
      ,[name]
      ,[score]
	  ,DENSE_RANK() OVER(Order By score DESC) as rank
  FROM [dbvis database].[dbo].[june_exam_scores]




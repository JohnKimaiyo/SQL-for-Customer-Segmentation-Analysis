/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [id]
      ,[name]
      ,[score]
	  ,PERCENT_RANK() OVER(Order By score DESC) as rank
  FROM [dbvis database].[dbo].[feb_exam_scores]

  /****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [id]
      ,[name]
      ,[score]
	  ,PERCENT_RANK()
	  OVER(Order By score DESC) as percentage_rank
  FROM [dbvis database].[dbo].[feb_exam_scores]

  /****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [id]
      ,[name]
      ,[score],
	  PERCENT_RANK()  OVER(Order By score DESC) as percentage_rank
  FROM [dbvis database].[dbo].[mar_exam_scores]
  /****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [id]
      ,[name]
      ,[score]
	  ,PERCENT_RANK() OVER(Order by score DESC) as perntile_rank
  FROM [dbvis database].[dbo].[apr_exam_scores]


  /****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [id]
      ,[name]
      ,[score],
	  PERCENT_RANK() OVER(Order By score) as percentile_rank
  FROM [dbvis database].[dbo].[may_exam_scores]

  /****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [id]
      ,[name]
      ,[score]
	  ,PERCENT_RANK() OVER(Order by Score DESC) as percentile_rank
  FROM [dbvis database].[dbo].[june_exam_scores]

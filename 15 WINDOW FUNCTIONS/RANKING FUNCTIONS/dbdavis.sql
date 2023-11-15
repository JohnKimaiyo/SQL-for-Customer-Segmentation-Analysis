/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [id]
      ,[name]
      ,[score]
	  ,RANK() OVER(Order By score DESC) as rank
  FROM [dbvis database].[dbo].[exam_scores]
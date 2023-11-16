/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [employee_id]
      ,[first_name]
      ,[last_name]
      ,[position]
      ,[bonus]
      ,[average_bonus_for_position]
  FROM [LearnSQL dbo].[dbo].[Bonus_jan]
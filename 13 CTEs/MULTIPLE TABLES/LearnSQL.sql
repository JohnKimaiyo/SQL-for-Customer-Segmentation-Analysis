/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [employee_id]
      ,[first_name]
      ,[last_name]
      ,[position]
      ,[bonus]
      ,[average_bonus_for_position]
  FROM [LearnSQL dbo].[dbo].[Bonus_jan]

  WITH avg_position AS (
    SELECT position, AVG(bonus) AS average_bonus_for_position
    FROM Bonus_jan
    GROUP BY position)
SELECT b.employee_id, b.first_name, b.last_name, b.position, b.bonus, ap.average_bonus_for_position
FROM Bonus_jan b
JOIN avg_position ap
ON b.position = ap.position;

-- claculate fifferece betweee actual and average bonus
WITH CTE_Difference AS (
    SELECT
        bonus,
        average_bonus_for_position,
        ( bonus -average_bonus_for_position) AS average_actual_bonus_difference
      FROM [LearnSQL dbo].[dbo].[Bonus_jan]
        
)
SELECT
  bonus,
     average_bonus_for_position,
    average_actual_bonus_difference

     FROM CTE_Difference;

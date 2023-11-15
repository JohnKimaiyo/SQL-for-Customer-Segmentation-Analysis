
/****** ROW_NUMBER() function to assign a rank to each row based on the score.  ******/
SELECT TOP (1000) [id]
      ,[name]
      ,[score]
	  ,ROW_NUMBER()
OVER (
ORDER BY
 score 
DESC
) as rank
  FROM [dbvis database].[dbo].[exam_scores]
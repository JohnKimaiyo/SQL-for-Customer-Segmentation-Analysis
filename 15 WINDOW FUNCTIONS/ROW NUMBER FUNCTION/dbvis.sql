CREATE TABLE
 exam_scores (
    id INT 
PRIMARY KEY
,
    name 
VARCHAR
(50),
    score INT
);
INSERT INTO
 exam_scores (id, name, score)
VALUES
    (1, 
'Alice'
, 85),
    (2, 
'Bob'
, 92),
    (3, 
'Charlie'
, 78),
    (4, 
'Dave'
, 91),
    (5, 
'Eve'
, 89),
    (6, 
'John'
, 92),
    (7, 
'Andrew'
, 85);






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
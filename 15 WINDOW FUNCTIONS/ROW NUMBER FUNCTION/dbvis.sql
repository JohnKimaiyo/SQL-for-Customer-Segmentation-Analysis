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


  CREATE TABLE
 feb_exam_scores (
    id INT 
PRIMARY KEY
,
    name 
VARCHAR
(50),
    score INT
);
INSERT INTO
 feb_exam_scores (id, name, score)
VALUES
    (1, 
'Alice'
, 285),
    (2, 
'Bob'
, 292),
    (3, 
'Charlie'
, 278),
    (4, 
'Dave'
,291),
    (5, 
'Eve'
, 289),
    (6, 
'John'
, 292),
    (7, 
'Andrew'
, 285);

/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [id]
      ,[name]
      ,[score]
	  ,ROW_NUMBER()
OVER (
ORDER BY
 score 
DESC
) as rank
  FROM [dbvis database].[dbo].[feb_exam_scores]


  CREATE TABLE
 mar_exam_scores (
    id INT 
PRIMARY KEY
,
    name 
VARCHAR
(50),
    score INT
);
INSERT INTO
 mar_exam_scores (id, name, score)
VALUES
    (1, 
'Alice'
, 385),
    (2, 
'Bob'
, 392),
    (3, 
'Charlie'
, 378),
    (4, 
'Dave'
, 391),
    (5, 
'Eve'
, 389),
    (6, 
'John'
, 392),
    (7, 
'Andrew'
, 385);


/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [id]
      ,[name]
      ,[score]
	  ,ROW_NUMBER()
OVER (
ORDER BY
 score 
DESC
) as rank
  FROM [dbvis database].[dbo].[mar_exam_scores]



  CREATE TABLE
 apr_exam_scores (
    id INT 
PRIMARY KEY
,
    name 
VARCHAR
(50),
    score INT
);
INSERT INTO
 apr_exam_scores (id, name, score)
VALUES
    (1, 
'Alice'
, 485),
    (2, 
'Bob'
, 492),
    (3, 
'Charlie'
, 478),
    (4, 
'Dave'
, 491),
    (5, 
'Eve'
, 489),
    (6, 
'John'
, 492),
    (7, 
'Andrew'
, 485);


/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [id]
      ,[name]
      ,[score],
	  ROW_NUMBER()
OVER (
ORDER BY
 score 
DESC
) as rank
  FROM [dbvis database].[dbo].[mar_exam_scores]

  CREATE TABLE
 may_exam_scores (
    id INT 
PRIMARY KEY
,
    name 
VARCHAR
(50),
    score INT
);
INSERT INTO
 may_exam_scores (id, name, score)
VALUES
    (1, 
'Alice'
, 585),
    (2, 
'Bob'
, 592),
    (3, 
'Charlie'
, 578),
    (4, 
'Dave'
, 591),
    (5, 
'Eve'
, 589),
    (6, 
'John'
, 592),
    (7, 
'Andrew'
, 585);

/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [id]
      ,[name]
      ,[score]
	  , ROW_NUMBER()
	  OVER(Order By score DESC ) as rank
  FROM [dbvis database].[dbo].[may_exam_scores]

  /****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [id]
      ,[name]
      ,[score]
	  ,ROW_NUMBER() 
	  OVER(Order BY score DESC) as rank 
  FROM [dbvis database].[dbo].[june_exam_scores]

  SELECT TOP (1000) [id]
      ,[name]
      ,[score]
	  , ROW_NUMBER()
	  OVER(Order By score DESC ) as rank
  FROM [dbvis database].[dbo].[may_exam_scores]

  /****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [id]
      ,[name]
      ,[score]
	  ,RANK() OVER(Order By score DESC) as rank
  FROM [dbvis database].[dbo].[apr_exam_scores]

  /****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [id]
      ,[name]
      ,[score]
	  ,RANK() OVER(Order By score DESC) as rank
  FROM [dbvis database].[dbo].[may_exam_scores]

  /****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [id]
      ,[name]
      ,[score]
	  ,RANK() OVER(Order By score DESC) as rank
  FROM [dbvis database].[dbo].[june_exam_scores]
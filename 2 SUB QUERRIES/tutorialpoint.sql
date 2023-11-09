
/****** Script for SelectTopNRows command from SSMS  ******/
SELECT * FROM CUSTOMERS

  WHERE ID IN(SELECT ID FROM CUSTOMERS WHERE SALARY > 4500);
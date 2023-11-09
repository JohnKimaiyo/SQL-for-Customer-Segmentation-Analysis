
/****** Script for SelectTopNRows command from SSMS  ******/
SELECT * FROM CUSTOMERS

  WHERE ID IN(SELECT ID FROM CUSTOMERS WHERE SALARY > 4500);

-- create new table customersbkp
  CREATE TABLE CUSTOMERS_BKP (
   ID INT NOT NULL,
   NAME VARCHAR(20) NOT NULL,
   AGE INT NOT NULL,
   ADDRESS CHAR (25),
   SALARY DECIMAL (18, 2),
   PRIMARY KEY (ID)
);

INSERT INTO CUSTOMERS_BKP 
SELECT * FROM CUSTOMERS 
WHERE ID IN (SELECT ID FROM CUSTOMERS);

UPDATE CUSTOMERS
SET SALARY = SALARY * 0.25
WHERE AGE IN(SELECT AGE FROM CUSTOMERS_BKP WHERE AGE >=27);

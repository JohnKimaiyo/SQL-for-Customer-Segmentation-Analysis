--  select customer with highest balance --
SELECT * FROM bank.account
WHERE balance =(select Max(balance) FROM bank.account  );


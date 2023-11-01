--  select customer with highest balance --
SELECT * FROM bank.account
WHERE balance =(select Max(balance) FROM bank.account  );

-- select type of loan with high interest rate --
SELECT * FROM bank.loan_type
WHERE base_interest_rate = (SELECT MAX(base_interest_rate)  FROM bank.loan_type  )
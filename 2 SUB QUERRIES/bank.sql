--  select customer with highest balance --
SELECT * FROM bank.account
WHERE balance =(select Max(balance) FROM bank.account  );

-- select type of loan with high interest rate --
SELECT * FROM bank.loan_type
WHERE base_interest_rate = (SELECT MAX(base_interest_rate)  FROM bank.loan_type  )

-- selct loan tyoe with the highest amount --
SELECT * FROM bank.loan
WHERE amount_paid = (SELECT MAX(amount_paid)   FROM bank.loan  );

-- select  descripoin with hist balance --

SELECT * FROM bank.transaction
WHERE amount =(SELECT MAX(amount) FROM bank.transaction )
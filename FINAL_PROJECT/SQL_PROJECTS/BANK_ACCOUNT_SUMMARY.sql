create database Transaction;
use Transaction;
CREATE TABLE bank (
    AccountNumber INT,
    AccountHolderName VARCHAR(50),
    TransactionDate DATE,
    TransactionType VARCHAR(50),
    TransactionAmount DECIMAL(10 , 2 )
);
insert into bank values
(1001, 'Ravi Sharma', '2023-07-01', 'Deposit', 5000.00),
(1001, 'Ravi Sharma', '2023-07-05', 'Withdrawal', 1000.00),
(1001, 'Ravi Sharma', '2023-07-10', 'Deposit', 2000.00),
(1002, 'Priya Gupta', '2023-07-02', 'Deposit', 3000.00),
(1002, 'Priya Gupta', '2023-07-08', 'Withdrawal', 500.00),
(1003, 'Vikram Patel', '2023-07-04', 'Deposit', 10000.00),
(1003, 'Vikram Patel', '2023-07-09', 'Withdrawal', 2000.00);

select * from bank;

## question
select AccountNumber,AccountHolderName,
SUM(
case
    when TransactionType = 'Deposit' then TransactionAmount
    when TransactionType = 'Withdrawal' then -TransactionAmount
    else 0
end)
as TotalBalance
from bank
group by AccountNumber,AccountHolderName
order by AccountNumber;

create database market;
use market;
CREATE TABLE market (
    customerid INT,
    productid VARCHAR(20),
    purchasedate DATE,
    quantity INT,
    revenue DECIMAL(10 , 2 )
);
insert into market values
(1,'A','2023-01-01',5,100.00),
(2, 'B', '2023-01-02', 3, 50.00),
(3, 'A', '2023-01-03', 2, 30.00),
(4, 'C', '2023-01-03', 1, 20.00),
(1, 'B', '2023-01-04', 4, 80.00);

select * from market;

# calculate total revenue
select sum(revenue) as TotalRevenue
from market;

# Calculate total sales by product 
select productid,
sum(quantity) as TotalQuantity,
sum(revenue) as TotalRevenue
from market
group by productid;

#3.	Find top customer by Revenue
SELECT customerid, SUM(revenue) AS TotalRevenue
FROM market
GROUP BY customerid;

SELECT customerid, SUM(revenue) AS TotalRevenue
FROM market
GROUP BY customerid
order by TotalRevenue desc
limit 1;
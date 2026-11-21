create database storedb;
use storedb;
create table Products(
  ProductID INT,
    ProductName VARCHAR(50),
    SellingPrice DECIMAL(10,2)
);
select * from Products;
insert into Products values
(1, 'Product A', 100.00),
(2, 'Product B', 150.00),
(1, 'Product A', 120.00),
(3, 'Product C', 200.00),
(2, 'Product B', 180.00),
(1, 'Product A', 90.00),
(3, 'Product C', 210.00);
select * from Products;

# average selling price
SELECT 
    ProductName, AVG(SellingPrice) AS SellingPrice
FROM
    Products
GROUP BY ProductName;
create database sale;
use sale;
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Price DECIMAL(10,2)
);
INSERT INTO Products VALUES
(1, 'Apple', 2.50),
(2, 'Banana', 1.50),
(3, 'Orange', 3.00),
(4, 'Mango', 2.00);
select * from Products;

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    ProductID INT,
    Quantity INT,
    Sales DECIMAL(10,2),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

INSERT INTO Orders VALUES
(1, 1, 10, 25.00),
(2, 1, 5, 12.50),
(3, 2, 8, 12.00),
(4, 3, 12, 36.00),
(5, 4, 6, 12.00);
select * from Orders;

# Find top-selling products and their revenue
select p.ProductName,
sum(o.Sales) as TotalRevenue
from Products p
inner join Orders o
on p.ProductId = o.ProductId
group by p.ProductName
order by TotalRevenue desc;

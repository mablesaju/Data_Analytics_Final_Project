create database customers;
use customers;
CREATE TABLE customers (
    id INT PRIMARY KEY,
    name VARCHAR(20)
);
insert into customers values
(1,'Joe'),
(2,'Henry'),
(3,'Sam'),
(4,'Max');
SELECT 
    *
FROM
    customers;

CREATE TABLE orders (
    id INT PRIMARY KEY,
    customerid INT,
    FOREIGN KEY (customerid)
        REFERENCES customers (id)
);

insert into orders values
(2,1),
(1,3);

select * from orders;

# Find customers who never order
SELECT c.name AS Customers
FROM customers c
LEFT JOIN
orders o ON c.id = o.customerid
WHERE o.customerid is NULL;
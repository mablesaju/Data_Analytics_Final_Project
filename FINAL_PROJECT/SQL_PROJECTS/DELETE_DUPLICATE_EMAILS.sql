create database duplicate;
use duplicate;
create table email
(id int primary key,
name varchar(20),
email varchar(50),
phone varchar(20));

insert into email values
(1, 'Rahul', 'rahul@example.com', '9839473902'),
(2, 'Rohit', 'rohit@example.com', '9883782971'),
(3, 'Suresh', 'rahul@example.com', '7654321098'),
(4, 'Manish', 'manish@example.com', '8927394619'),
(5, 'Amit', 'amit@example.com', '9399303840'),
(6, 'Rahul', 'rahul@example.com', '9737466147');
select * from email;

# Deleting duplicate values
SELECT email, MIN(id) AS keep_id
FROM email
GROUP BY email;

SET SQL_SAFE_UPDATES = 0;
DELETE e1
FROM email e1
JOIN email e2
ON e1.email = e2.email
AND e1.id > e2.id;

select * from email;
SET SQL_SAFE_UPDATES = 1;
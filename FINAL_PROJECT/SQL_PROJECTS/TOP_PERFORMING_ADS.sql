create database ads;
use ads;
CREATE TABLE ads (
    adId INT,
    views INT,
    clicks INT,
    cost DECIMAL(10,2)
);
INSERT INTO ads VALUES
(1, 1000, 50, 20.5),
(2, 800, 30, 15.2),
(3, 1200, 80, 25.7),
(4, 600, 20, 10.9),
(5, 1500, 120, 40.3);

select * from ads;

##question
SELECT
    adid AS adId,
    CONCAT(ROUND((clicks * 100.0 / views), 1), '%') AS CTR,
    views,
    clicks,
    cost
FROM ads
ORDER BY (clicks * 100.0 / views) DESC;
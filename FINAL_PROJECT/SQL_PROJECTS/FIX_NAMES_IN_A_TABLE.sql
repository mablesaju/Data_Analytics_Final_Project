create database fix;
use fix;
CREATE TABLE Names (
    Name VARCHAR(100)
);
INSERT INTO Names (Name)
VALUES
('rAVI kUMAR'),
('priya sharma'),
('amit PATEL'),
('NEHA gupta');

select * from Names;
SET SQL_SAFE_UPDATES = 0;

UPDATE Names
SET Name = CONCAT(
    UPPER(LEFT(LOWER(TRIM(Name)), 1)),
    LOWER(SUBSTRING(TRIM(Name), 2, LOCATE(' ', TRIM(Name)) - 1)),
    ' ',
    UPPER(SUBSTRING(LOWER(TRIM(Name)), LOCATE(' ', TRIM(Name)) + 1, 1)),
    LOWER(SUBSTRING(TRIM(Name), LOCATE(' ', TRIM(Name)) + 2))
);

select * from Names;
SET SQL_SAFE_UPDATES = 1;
-- DELETE  Removing Data from a Table
-- BASIC SYNTAX
-- DELETE FROM table_name
-- WHERE condition;
use test_db;
-- Delete One Row-- 
DELETE FROM data 
WHERE id = 5;

-- Delete Multiple Rows
SET SQL_SAFE_UPDATES = 0;

DELETE FROM data
WHERE gender = 'Others';

SET SQL_SAFE_UPDATES = 1;


SELECT * FROM data;
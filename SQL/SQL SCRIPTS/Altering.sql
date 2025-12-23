USE test_db;
-- Altering A table 


-- Add new column in table 
ALTER TABLE users ADD COLUMN is_active BOOLEAN DEFAULT TRUE;

-- DROP/Remove Column
 ALTER TABLE users DROP COLUMN gender;
 
 -- Modify Column Type 
 
 -- MODIFY: changes a column’s data type, length, NULL/NOT NULL, DEFAULT, UNIQUE, AUTO_INCREMENT, and position (not the column name).

ALTER TABLE users MODIFY COLUMN name VARCHAR(150);
ALTER TABLE users MODIFY COLUMN is_active BOOLEAN DEFAULT FALSE;
-- IMPORTANT NOTE MODIFY change/update in future entry not in previous entries 
ALTER TABLE users MODIFY COLUMN is_active BOOLEAN AFTER date_of_birth;


-- IMPORTANT RULE OF SQL---->
-- MODIFY = schema
-- UPDATE = data

SELECT * FROM users;
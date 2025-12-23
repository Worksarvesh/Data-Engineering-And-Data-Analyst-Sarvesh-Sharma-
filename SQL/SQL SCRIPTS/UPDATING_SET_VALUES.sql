---- UPDATE MODIFYING Existing data 
-- basic syntax
-- UPDATE table_name
-- SET column1 = value1, column2 = value2
-- WHERE condition;
--  Update One Column
UPDATE data
SET name = 'Alicia'
WHERE id = 1;

-- Update Multiple Columns
UPDATE data
SET name = 'Robert', email = 'robert@example.com'
WHERE id = 2;

-- Without WHERE Clause (Warning)
SET SQL_SAFE_UPDATES = 0;
UPDATE data
SET gender = 'Others';
SET SQL_SAFE_UPDATES = 1;

-- ----------------------- QUIZ--------------------------
-- 1. Update the salary of user with id = 5 to ₹70,000-- 
UPDATE data
SET salary = '70000'
WHERE id = 5;

-- 2. Change the name of the user with email 'robert@example.com'
-- to Aisha Khan .
UPDATE data
SET name = 'Aisha Khan'
WHERE email = 'robert@example.com';

-- 3. Increase salary by ₹10,000 for all users whose salary is less
-- than ₹60,000
SET SQL_SAFE_UPDATES = 0;
UPDATE data
SET salary = salary + 10000
WHERE salary < 60000;


-- 4. Set the gender of user Sarvesh Sharma to male .
UPDATE data
SET gender = 'Male'
WHERE name = 'Sarvesh Sharma';

SET SQL_SAFE_UPDATES = 1;

SELECT * FROM data;






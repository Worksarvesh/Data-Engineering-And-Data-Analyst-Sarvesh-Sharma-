USE test_db;
CREATE TABLE salary_data (
    id INT AUTO_INCREMENT PRIMARY KEY,
    salary DECIMAL(10,2)
);
INSERT INTO salary_data (salary)
VALUES
(35000.25),
(42000.50),
(48000.75),
(51000.10),
(56500.99),
(60000.49),
(64500.51),
(70000.00),
(72500.33),
(78000.88),
(82000.05),
(90000.60),
(95000.40),
(100000.95),
(120000.15);

-- 4. Mathematical Functions-----
-- ROUND() , FLOOR() , CEIL()
SELECT 
     salary AS original_data,
    ROUND(salary) AS rounded,
    FLOOR(salary) AS floored,
    CEIL(salary) AS CEILed
FROM
    salary_data;
    
-- ROUND(x): rounds x to the nearest integer (>=0.5 up, <0.5 down); 
-- FLOOR(x): greatest integer ≤ x; 
-- CEIL(x): smallest integer ≥ x

-- MOD()  --> Find even or odd user IDs:
SELECT MOD(id,2) AS Remainder FROM salary_data;




-- IMPORTANT Funtions-----
use test_db;
CREATE TABLE function_data (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    salary INT,
    gender ENUM('Male','Female','Others'),
    join_date DATE
);
INSERT INTO function_data (name, email, salary, gender, join_date)
VALUES
('Amit Sharma','amit@gmail.com',45000,'Male','2020-01-15'),
('Priya Singh','priya@gmail.com',52000,'Female','2019-03-22'),
('Rahul Verma','rahul@gmail.com',48000,'Male','2021-06-10'),
('Neha Gupta','neha@gmail.com',60000,'Female','2018-11-05'),
('Alex Roy','alex@gmail.com',55000,'Others','2020-08-19'),

('Rohit Mehta','rohit@gmail.com',47000,'Male','2019-12-01'),
('Anjali Patel','anjali@gmail.com',51000,'Female','2022-02-14'),
('Karan Malhotra','karan@gmail.com',65000,'Male','2017-07-30'),
('Sneha Iyer','sneha@gmail.com',58000,'Female','2018-04-18'),
('Sam Wilson','sam@gmail.com',50000,'Others','2021-09-25'),

('Vikas Yadav','vikas@gmail.com',43000,'Male','2020-05-09'),
('Pooja Nair','pooja@gmail.com',62000,'Female','2016-10-12'),
('Arjun Rao','arjun@gmail.com',70000,'Male','2015-01-20'),
('Kriti Kapoor','kriti@gmail.com',54000,'Female','2019-08-08'),
('Taylor Smith','taylor@gmail.com',59000,'Others','2021-03-03'),

('Suresh Kumar','suresh@gmail.com',46000,'Male','2022-06-17'),
('Riya Chatterjee','riya@gmail.com',53000,'Female','2020-02-27'),
('Mohit Jain','mohit@gmail.com',48000,'Male','2018-12-31'),
('Isha Malviya','isha@gmail.com',61000,'Female','2017-05-06'),
('Jordan Lee','jordan@gmail.com',57000,'Others','2019-09-14');

-- 1. Aggregate Functions--
-- COUNT()
SELECT COUNT(*) FROM function_data;
-- COUNT() with Conditions 
SELECT COUNT(*) FROM function_data WHERE gender = 'Female';
SELECT COUNT(*) FROM function_data WHERE salary>50000;

-- MIN() MAX()
SELECT MIN(salary) AS min_salary , MAX(salary) AS max_salary FROM function_data;

-- SUM()--
SELECT SUM(salary) AS total_payroll_salary FROM function_data;

-- AVG() --
SELECT AVG(salary) AS average_salary FROM function_data;

-- GROUPING by GROUP BY --
SELECT gender,AVG(salary) AS average_salary 
FROM function_data
GROUP BY gender;

SELECT gender,SUM(salary) AS summation_salary 
FROM function_data
GROUP BY gender;

-- LENGTH()--
SELECT LENGTH(name) AS len_name FROM function_data;

-- LOWER() 
SELECT LOWER(name) as Low_name FROM function_data;

-- UPPER()
SELECT UPPER(name) as up_name FROM function_data;

-- CONCAT()--
SELECT CONCAT(name,'<' ,email,'>') AS concat_text FROM function_data;

-- NOW()-- 
SELECT NOW();

-- YEAR() MONTH() DATE()
SELECT YEAR(join_date) AS YEAR FROM function_data;
SELECT MONTH(join_date) FROM function_data;
SELECT DATE(join_date) AS date_join FROM function_data;

-- DATEDIFF()
SELECT DATEDIFF(CURRENT_DATE, join_date) AS diff FROM function_data;

-- TIMESTAMPDIFF()
SELECT TIMESTAMPDIFF(YEAR,join_date,CURDATE()) FROM function_data;

SELECT name, gender,
 IF(gender = 'Female', 'Yes', 'No') AS is_female
FROM function_data;




SELECT * FROM function_data;

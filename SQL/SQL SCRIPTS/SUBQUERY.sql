--  Subqueries in MySQL---
USE test_db;
DROP TABLE employees;
DROP TABLE departments;
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

INSERT INTO departments VALUES
(10, 'HR'),
(20, 'IT'),
(30, 'Finance'),
(40, 'Marketing'),
(50, 'Legal');   -- no employees on purpose
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    dept_id INT,
    salary INT,
    manager_id INT
);

INSERT INTO employees VALUES
(1, 'Amit', 10, 50000, NULL),
(2, 'Neha', 20, 60000, 1),
(3, 'Ravi', 20, 40000, 1),
(4, 'Priya', 30, 70000, 2),
(5, 'Ankit', NULL, 45000, 2),   -- no department
(6, 'Sara', 99, 30000, 2),     -- invalid department
(7, 'Karan', 10, 55000, 1),
(8, 'Meena', 30, 65000, 4);

-- Scalar Subquery---
SELECT emp_id,emp_name,salary
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);

SELECT AVG(salary) FROM employees;


-- Subquery with IN ---
-- Find the names of employees who work in the IT department.-- 
SELECT e.emp_name
FROM employees e
WHERE dept_id IN (SELECT dept_id FROM departments WHERE dept_name = 'IT');

-- Employees earning more than the average salary
SELECT emp_name,salary
FROM employees 
WHERE salary > (SELECT AVG(salary) FROM employees);

-- Find employees working in departments that have more than one employee.
SELECT 
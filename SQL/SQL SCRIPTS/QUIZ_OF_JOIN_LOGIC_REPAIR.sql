USE test_db;

DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS departments;

CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    dept_id INT,
    salary INT,
    manager_id INT
);
INSERT INTO departments (dept_id, dept_name) VALUES
(10, 'HR'),
(20, 'IT'),
(30, 'Finance'),
(40, 'Marketing');   -- no employees on purpose

INSERT INTO employees (emp_id, emp_name, dept_id, salary, manager_id) VALUES
(1, 'Amit', 10, 50000, NULL),   -- valid department
(2, 'Neha', 20, 60000, 1),      -- valid department
(3, 'Ravi', NULL, 45000, 1),    -- no department
(4, 'Priya', 99, 40000, 2);     -- invalid department (does not exist)

-- LEVEL 1 — foundation (no excuses)

-- Show all employees with their department names.

SELECT e.emp_name,d.dept_name
FROM employees e
LEFT JOIN departments d
ON e.dept_id = d.dept_id;

-- Some employees are not assigned to any department.
SELECT e.emp_name,d.dept_name
FROM employees e
LEFT JOIN departments d
ON e.dept_id = d.dept_id
WHERE dept_name IS NULL;

-- Show only employees who are assigned to a department.
SELECT e.emp_name,d.dept_name
FROM employees e
INNER JOIN departments d
ON e.dept_id = d.dept_id;


-- Show all departments and the employees working in them.
SELECT e.emp_name,d.dept_name
FROM employees e
RIGHT JOIN  departments d
ON e.dept_id = d.dept_id;




-- Some departments have no employees.
SELECT e.emp_name,d.dept_name
FROM employees e
RIGHT JOIN  departments d
ON e.dept_id = d.dept_id
WHERE emp_name IS NULL;

-- Show employees who do not belong to any department.
SELECT e.emp_name,d.dept_name
FROM employees e
LEFT JOIN  departments d
ON e.dept_id = d.dept_id
WHERE dept_name IS NULL;


-- LEVEL 2 — logic over syntax

-- List employee names and department names, including employees without departments.
SELECT e.emp_name,d.dept_name
FROM employees e
LEFT JOIN departments d
ON e.dept_id = d.dept_id;

-- List department names and employee names, including departments with zero employees.
SELECT e.emp_name,d.dept_name
FROM employees e
RIGHT JOIN departments d
ON e.dept_id = d.dept_id;

-- Show employee names and department names, only where department exists.
SELECT e.emp_name,d.dept_name
FROM employees e
INNER JOIN departments d
ON e.dept_id = d.dept_id;

-- Show departments that currently have at least one employee.
SELECT DISTINCT d.dept_name
FROM departments d
INNER JOIN employees e
ON e.dept_id = d.dept_id;


-- DISTINCT removes duplicate rows from the result so each value (or combination of values) appears only once.


-- LEVEL 3 — thinking like SQL (interview level)

-- Find departments that have no employees.
SELECT DISTINCT dept_name
FROM employees e
RIGHT JOIN departments d
ON e.dept_id = d.dept_id
WHERE e.emp_name IS NULL;


-- Find employees whose dept_id does not exist in the departments table.
SELECT DISTINCT emp_name
FROM employees e
LEFT JOIN departments d
ON e.dept_id = d.dept_id
WHERE d.dept_id IS NULL;

-- Show department-wise employee count, including departments with zero employees.
SELECT dept_name,COUNT(emp_name) AS count_of_employees
FROM employees e
RIGHT JOIN departments d
ON e.dept_id = d.dept_id
GROUP BY d.dept_name;


-- Show department-wise average salary, only for departments that have employees.
SELECT dept_name,AVG(salary) AS indiv_salary
FROM employees e
INNER JOIN departments d
ON e.dept_id = d.dept_id
GROUP BY d.dept_name;


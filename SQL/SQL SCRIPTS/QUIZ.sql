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
(10, 'IT'),
(20, 'HR'),
(30, 'Finance'),
(40, 'Marketing'),
(50, 'Data Analyst');

INSERT INTO employees (emp_id, emp_name, dept_id, salary, manager_id) VALUES
(1, 'Rahul', 10, 80000, NULL),
(2, 'Ankit', 20, 50000, 1),
(3, 'Neha', 10, 60000, 1),
(4, 'Priya', 30, 45000, 2),
(5, 'Aman', 20, 40000, 2);

-- Q1: emp_name, salary, dept_name for all employees

-- Q2: all employees including those without a department

-- Q3: show all departments including Marketing even if no employee belongs to it





-- LEVEL 1 — foundation (no excuses)

-- Show all employees with their department names.

SELECT e.emp_name,d.dept_name
FROM employees e
LEFT JOIN departments d
ON d.dept_id = e.emp_id;

-- Some employees are not assigned to any department.

-- Show only employees who are assigned to a department.

-- Show all departments and the employees working in them.
-- Some departments have no employees.

-- Show employees who do not belong to any department.























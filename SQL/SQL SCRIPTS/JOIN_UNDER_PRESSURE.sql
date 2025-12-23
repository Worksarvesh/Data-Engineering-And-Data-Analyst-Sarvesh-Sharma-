USE test_db;
-- 🔥 SET A — instinct check

SELECT 
    e.emp_name, d.dept_name
FROM
    employees e
        LEFT JOIN
    departments d ON e.dept_id = d.dept_idhow only employees who belong to a valid department.
SELECT e.emp_name,d.dept_name
FROM employees e
INNER JOIN departments d
ON e.dept_id = d.dept_id;

-- Show all departments, even if they have zero employees.
SELECT e.emp_name,d.dept_name
FROM employees e
RIGHT JOIN departments d
ON e.dept_id = d.dept_id;


-- Show only departments that currently have employees.
SELECT DISTINCT d.dept_name
FROM employees e
INNER JOIN departments d
ON e.dept_id = d.dept_id;

-- 🔥 SET B — NULL traps (this is where people fail)

-- Find employees whose department does not exist.
SELECT DISTINCT e.emp_name
FROM employees e
LEFT JOIN departments d
ON e.dept_id = d.dept_id
WHERE d.dept_name IS NULL;
  

-- Find departments that have no employees.
SELECT DISTINCT d.dept_name
FROM employees e
RIGHT JOIN departments d
ON e.dept_id = d.dept_id
WHERE e.emp_name IS NULL;
  

-- Show employees and departments, but exclude rows with missing department info.
SELECT  e.emp_name,d.dept_name
FROM employees e
INNER JOIN departments d
ON e.dept_id = d.dept_id;


-- Show employees and departments, but keep employees even if department is missing.
SELECT  e.emp_name,d.dept_name
FROM employees e
LEFT JOIN departments d
ON e.dept_id = d.dept_id;



-- 🔥 SET C — aggregation pressure

-- Show department-wise employee count including zero-count departments.
SELECT d.dept_name,COUNT(e.emp_name) AS count_emp
FROM employees e
RIGHT JOIN departments d
ON e.dept_id = d.dept_id
GROUP BY d.dept_name;

-- Show department-wise average salary only where employees exist.
SELECT d.dept_name,AVG(e.salary) AS avg_sal
FROM employees e
INNER JOIN departments d
ON e.dept_id = d.dept_id
GROUP BY d.dept_name;

-- Show departments where employee count > 1.
SELECT d.dept_name,COUNT(e.emp_name) AS count_emp
FROM employees e
INNER JOIN departments d
ON e.dept_id = d.dept_id
GROUP BY d.dept_name
HAVING COUNT(e.emp_name) > 1;


-- Show departments where average salary > overall average salary.
SELECT DISTINCT d.dept_name
FROM employees e
INNER JOIN departments d
ON e.dept_id = d.dept_id
GROUP BY d.dept_name
HAVING AVG(e.salary) > (SELECT AVG(salary) FROM employees);

-- (Yes, 11–12 force JOIN + GROUP BY + HAVING / subquery thinking.)

-- 🔥 SET D — clarity vs hacks (interview mindset)

-- Show departments that have employees — without using WHERE emp_name IS NOT NULL.
SELECT 
    d.dept_name
FROM
    employees e
        INNER JOIN
    departments d ON e.dept_id = d.dept_id;
-- Rewrite a RIGHT JOIN query using LEFT JOIN instead.

-- Solve any one above question using a subquery instead of JOIN.
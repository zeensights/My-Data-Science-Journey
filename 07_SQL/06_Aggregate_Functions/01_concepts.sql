-- Aggregate functions summarize multiple rows into a result.
-- Examples use the employees table from the learning database.

-- Count rows:
SELECT COUNT(*) AS employee_count FROM employees;

-- Count non-NULL salary values:
SELECT COUNT(salary) AS employees_with_salary FROM employees;

-- Total and average salary:
SELECT SUM(salary) AS total_salary, AVG(salary) AS average_salary
FROM employees;

-- Lowest and highest salary:
SELECT MIN(salary) AS lowest_salary, MAX(salary) AS highest_salary
FROM employees;

-- COUNT(*) counts rows; COUNT(column) ignores NULL in that column.
-- SUM/AVG/MIN/MAX generally ignore NULL values.
-- GROUP BY is used when a separate summary is needed for each category.

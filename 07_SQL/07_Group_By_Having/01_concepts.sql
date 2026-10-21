-- GROUP BY creates a group for each distinct value; HAVING filters groups.
-- WHERE filters individual rows before grouping; HAVING filters after aggregation.

-- Employee count per department:
SELECT department, COUNT(*) AS employee_count
FROM employees
GROUP BY department
ORDER BY employee_count DESC;

-- Average salary per department:
SELECT department, AVG(salary) AS average_salary
FROM employees
GROUP BY department
ORDER BY average_salary DESC;

-- Keep only departments with at least two employees:
SELECT department, COUNT(*) AS employee_count
FROM employees
GROUP BY department
HAVING COUNT(*) >= 2;

-- Filter rows first, then group:
SELECT department, AVG(salary) AS average_salary
FROM employees
WHERE salary >= 45000
GROUP BY department
HAVING AVG(salary) > 48000;

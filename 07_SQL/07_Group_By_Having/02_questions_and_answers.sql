-- GROUP BY and HAVING: questions with answers

-- Q1. Count employees in each department.
-- Answer:
SELECT department, COUNT(*) AS employee_count
FROM employees
GROUP BY department;

-- Q2. Calculate average salary per department.
-- Answer:
SELECT department, AVG(salary) AS average_salary
FROM employees
GROUP BY department;

-- Q3. Show only departments with more than one employee.
-- Answer:
SELECT department, COUNT(*) AS employee_count
FROM employees
GROUP BY department
HAVING COUNT(*) > 1;

-- Q4. Show department salary totals from highest to lowest.
-- Answer:
SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department
ORDER BY total_salary DESC;

-- Q5. Explain WHERE vs HAVING.
-- Answer: WHERE filters rows before grouping; HAVING filters groups after aggregation.

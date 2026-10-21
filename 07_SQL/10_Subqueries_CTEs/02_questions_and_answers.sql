-- Subqueries and CTEs: questions with answers

-- Q1. Find employees earning more than the overall average.
-- Answer:
SELECT name, salary
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);

-- Q2. Use a CTE to calculate department headcount.
-- Answer:
WITH department_counts AS (
    SELECT department, COUNT(*) AS headcount
    FROM employees
    GROUP BY department
)
SELECT department, headcount
FROM department_counts
ORDER BY headcount DESC;

-- Q3. Return departments whose average salary is above 48000 using a CTE.
-- Answer:
WITH department_averages AS (
    SELECT department, AVG(salary) AS avg_salary
    FROM employees
    GROUP BY department
)
SELECT department, avg_salary
FROM department_averages
WHERE avg_salary > 48000;

-- Q4. What is a CTE?
-- Answer: A named result set defined with WITH and available to the statement that follows.

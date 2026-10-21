-- Subqueries and Common Table Expressions (CTEs)

-- Subquery: find employees earning more than the overall average salary.
SELECT name, salary
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);

-- CTE: name a query result to make a larger query easier to read.
WITH department_stats AS (
    SELECT department, AVG(salary) AS average_salary
    FROM employees
    GROUP BY department
)
SELECT department, average_salary
FROM department_stats
WHERE average_salary > 48000;

-- EXISTS checks whether a subquery returns at least one row.
-- Correlated subqueries can refer to values from the outer query.
-- Prefer clear aliases and test subqueries independently before combining them.

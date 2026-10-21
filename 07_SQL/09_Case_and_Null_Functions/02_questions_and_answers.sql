-- CASE and NULL-handling: questions with answers

-- Q1. Label salaries >= 55000 as 'High', others as 'Standard'.
-- Answer:
SELECT name,
       CASE WHEN salary >= 55000 THEN 'High' ELSE 'Standard' END AS salary_band
FROM employees;

-- Q2. Display 'Unassigned' when department is NULL.
-- Answer:
SELECT name, COALESCE(department, 'Unassigned') AS department
FROM employees;

-- Q3. What does NULLIF(0, 0) return?
-- Answer: NULL.

-- Q4. Safely divide amount by quantity when quantity might be zero.
-- Answer:
-- SELECT amount / NULLIF(quantity, 0) AS unit_price FROM order_lines;

-- Q5. How do you find rows with a missing department?
-- Answer:
SELECT * FROM employees WHERE department IS NULL;

-- Conditional expressions and NULL-handling in PostgreSQL

-- CASE WHEN creates conditional output:
SELECT name, salary,
       CASE
         WHEN salary >= 55000 THEN 'High'
         WHEN salary >= 48000 THEN 'Medium'
         ELSE 'Entry'
       END AS salary_band
FROM employees;

-- COALESCE returns the first non-NULL expression:
SELECT name, COALESCE(department, 'Unassigned') AS department
FROM employees;

-- NULLIF returns NULL when its two arguments are equal.
-- Useful for avoiding division by zero:
-- SELECT total_amount / NULLIF(quantity, 0) AS unit_price
-- FROM order_lines;

-- NULL is not tested with = NULL; use IS NULL / IS NOT NULL.
-- Choose compatible data types for CASE branches and COALESCE arguments.

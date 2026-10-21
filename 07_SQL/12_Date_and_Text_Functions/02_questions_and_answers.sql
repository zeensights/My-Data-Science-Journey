-- Date and text functions: questions with answers

-- Q1. Display employee names in uppercase.
-- Answer:
SELECT UPPER(name) AS uppercase_name FROM employees;

-- Q2. Display each employee name's character count.
-- Answer:
SELECT name, LENGTH(name) AS name_length FROM employees;

-- Q3. Find names starting with A, ignoring case.
-- Answer:
SELECT name FROM employees WHERE name ILIKE 'a%';

-- Q4. Return today's date in PostgreSQL.
-- Answer:
SELECT CURRENT_DATE;

-- Q5. What does DATE_TRUNC('month', some_timestamp) do?
-- Answer: It truncates a timestamp to the start of its month, useful for grouping by month.

-- ============================================================
-- SQL Learning: Filtering and Sorting
-- File: 01_concepts.sql
-- Database: PostgreSQL
-- Purpose: Learn to filter, search, sort, and limit query results.
-- Sample table: employees
-- ============================================================

-- 1. IN
-- Checks whether a value matches any value in a list.
SELECT employee_id, name, department
FROM employees
WHERE department IN ('Data', 'Finance', 'HR');

-- 2. NOT IN
-- Excludes rows whose value matches any value in a list.
SELECT employee_id, name, department
FROM employees
WHERE department NOT IN ('Data', 'HR');

-- Note: NULL values need special care with NOT IN. A NULL in the list
-- can make the condition evaluate to UNKNOWN.

-- 3. BETWEEN
-- Checks whether a value is within an inclusive range.
-- Both endpoints are included.
SELECT name, salary
FROM employees
WHERE salary BETWEEN 45000 AND 55000;

-- 4. LIKE
-- Pattern matching for text.
-- % means zero or more characters.
-- _ means exactly one character.
SELECT name
FROM employees
WHERE name LIKE 'A%';       -- Starts with A

SELECT name
FROM employees
WHERE name LIKE '%a';       -- Ends with a

SELECT name
FROM employees
WHERE name LIKE '%ar%';     -- Contains "ar"

SELECT name
FROM employees
WHERE name LIKE '_a%';      -- Second character is a

-- PostgreSQL-specific: ILIKE performs case-insensitive pattern matching.
SELECT name
FROM employees
WHERE name ILIKE 'a%';

-- 5. IS NULL / IS NOT NULL
-- Use these to check missing values. Do not use = NULL or != NULL.
SELECT employee_id, name, department
FROM employees
WHERE department IS NULL;

SELECT employee_id, name, department
FROM employees
WHERE department IS NOT NULL;

-- 6. ORDER BY
-- Sorts the result set.
-- ASC = ascending (default); DESC = descending.
SELECT name, salary
FROM employees
ORDER BY salary ASC;

SELECT name, salary
FROM employees
ORDER BY salary DESC;

-- Sort by multiple columns: department first, then salary high-to-low.
SELECT name, department, salary
FROM employees
ORDER BY department ASC, salary DESC;

-- 7. LIMIT
-- Returns at most the specified number of rows.
-- Combine with ORDER BY when you want the top/bottom results.
SELECT name, salary
FROM employees
ORDER BY salary DESC
LIMIT 3;

-- 8. DISTINCT
-- Returns unique values or unique combinations of selected columns.
SELECT DISTINCT department
FROM employees;

SELECT DISTINCT department, age
FROM employees
ORDER BY department, age;

-- 9. Combining filters and sorting
SELECT name, salary
FROM employees
WHERE department = 'Data'
  AND name LIKE 'S%'
ORDER BY salary DESC;

-- 10. Useful mental model
-- FROM -> WHERE -> SELECT -> ORDER BY -> LIMIT
-- This is a learning-friendly way to think about the query.
-- SQL's actual logical processing order is more nuanced.

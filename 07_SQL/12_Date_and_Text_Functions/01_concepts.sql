-- Common PostgreSQL date and text functions

-- Text examples:
SELECT name, UPPER(name) AS uppercase_name, LOWER(name) AS lowercase_name
FROM employees;

SELECT name, LENGTH(name) AS name_length, TRIM(name) AS trimmed_name
FROM employees;

-- Pattern matching examples:
SELECT name FROM employees WHERE name LIKE 'A%';
SELECT name FROM employees WHERE name ILIKE 'a%'; -- case-insensitive in PostgreSQL

-- Date examples assume a table has a date/timestamp column:
-- SELECT CURRENT_DATE;
-- SELECT CURRENT_TIMESTAMP;
-- SELECT order_date::date AS order_day FROM orders;
-- SELECT DATE_TRUNC('month', order_date) AS order_month, COUNT(*)
-- FROM orders GROUP BY DATE_TRUNC('month', order_date);

-- Date/time functions depend on the actual column type and time-zone needs.

-- =========================================================
-- POSTGRESQL MASTERY
-- LESSON 1: SQL & POSTGRESQL FOUNDATIONS
-- =========================================================

-- =========================================================
-- 1. SQL vs PostgreSQL
-- =========================================================
-- SQL (Structured Query Language) is a language used to
-- interact with relational databases.
--
-- PostgreSQL is an open-source relational database management
-- system (RDBMS) that uses SQL.
--
-- Remember:
-- SQL        = Language
-- PostgreSQL = Database Management System


-- =========================================================
-- 2. DATABASE, TABLE, ROW & COLUMN
-- =========================================================
-- Database = A collection of organized data.
-- Table    = Data organized into rows and columns.
-- Row      = One record/observation.
-- Column   = One attribute/field.


-- =========================================================
-- 3. CREATE TABLE
-- =========================================================
-- CREATE TABLE is used to create a new table.

CREATE TABLE employees (
    employee_id INT,
    name VARCHAR(50),
    department VARCHAR(50),
    age INT,
    salary INT
);


-- =========================================================
-- 4. INSERT DATA
-- =========================================================
-- INSERT INTO is used to add records to a table.

INSERT INTO employees
(employee_id, name, department, age, salary)
VALUES
(101, 'Aisha', 'Data', 24, 45000),
(102, 'Rahul', 'Finance', 29, 60000),
(103, 'Sara', 'Data', 26, 52000),
(104, 'Arjun', 'HR', 31, 55000),
(105, 'Zoya', 'Marketing', 27, 48000);


-- =========================================================
-- 5. SELECT
-- =========================================================
-- SELECT chooses which columns we want to retrieve.

SELECT name
FROM employees;

SELECT name, salary
FROM employees;

SELECT *
FROM employees;

-- SELECT * means all columns.


-- =========================================================
-- 6. FROM
-- =========================================================
-- FROM tells SQL which table contains the data.

SELECT name
FROM employees;


-- =========================================================
-- 7. WHERE
-- =========================================================
-- WHERE filters rows based on a condition.

SELECT *
FROM employees
WHERE department = 'Data';


-- =========================================================
-- 8. COMPARISON OPERATORS
-- =========================================================
-- =   Equal to
-- >   Greater than
-- <   Less than
-- >=  Greater than or equal to
-- <=  Less than or equal to
-- <>  Not equal to
--
-- PostgreSQL also supports != for not equal to.

SELECT *
FROM employees
WHERE salary > 50000;

SELECT *
FROM employees
WHERE age < 30;

SELECT *
FROM employees
WHERE salary = 48000;

SELECT *
FROM employees
WHERE department <> 'HR';


-- =========================================================
-- 9. TEXT vs NUMBERS
-- =========================================================
-- Text values are written inside single quotes.
-- Numeric values do not need quotes.

SELECT *
FROM employees
WHERE department = 'Data';

SELECT *
FROM employees
WHERE salary > 50000;


-- =========================================================
-- 10. AND
-- =========================================================
-- AND means ALL conditions must be true.

SELECT *
FROM employees
WHERE department = 'Data'
AND salary > 50000;


-- =========================================================
-- 11. OR
-- =========================================================
-- OR means at least ONE condition must be true.

SELECT *
FROM employees
WHERE department = 'Data'
OR department = 'Finance';


-- =========================================================
-- 12. BASIC SQL MENTAL MODEL
-- =========================================================
-- SELECT = What columns do I want?
-- FROM   = Which table contains the data?
-- WHERE  = Which rows do I want?
--
-- Example:
-- SELECT name, salary
-- FROM employees
-- WHERE salary > 50000;
--
-- Read it as:
-- From employees, find employees earning more than 50000,
-- and show their name and salary.


-- =========================================================
-- END OF LESSON 1 CONCEPTS
-- =========================================================

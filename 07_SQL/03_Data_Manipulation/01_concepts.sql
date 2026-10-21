-- SQL Learning Notes: Data Manipulation (CRUD)
-- Database: PostgreSQL
-- Purpose: Learn how to insert, read, update, and delete table data.
-- Practice on a sample/practice table. UPDATE and DELETE without WHERE can affect every row.

-- 1. INSERT: add a new row.
-- Prefer listing the target columns explicitly.
-- Example:
-- INSERT INTO employees (employee_id, name, department, age, salary)
-- VALUES (106, 'Imran', 'Support', 25, 42000);

-- 2. SELECT: read data from a table.
-- Example:
-- SELECT employee_id, name, department, salary
-- FROM employees;

-- 3. UPDATE: change existing row values.
-- Always check the WHERE condition before running an UPDATE.
-- Example:
-- UPDATE employees
-- SET salary = 44000
-- WHERE employee_id = 106;

-- 4. DELETE: remove selected rows.
-- Always check the WHERE condition before running a DELETE.
-- Example:
-- DELETE FROM employees
-- WHERE employee_id = 106;

-- 5. RETURNING: PostgreSQL can return rows affected by INSERT, UPDATE, or DELETE.
-- Example:
-- INSERT INTO employees (employee_id, name, department, age, salary)
-- VALUES (106, 'Imran', 'Support', 25, 42000)
-- RETURNING *;

-- UPDATE employees
-- SET salary = 45000
-- WHERE employee_id = 106
-- RETURNING employee_id, name, salary;

-- DELETE FROM employees
-- WHERE employee_id = 106
-- RETURNING *;

-- 6. Safe workflow
-- a) Run SELECT with the same WHERE condition first.
-- b) Confirm the rows you intend to change.
-- c) Run UPDATE or DELETE with that WHERE condition.
-- d) Use a transaction for important multi-step changes:
-- BEGIN;
-- UPDATE employees SET salary = 45000 WHERE employee_id = 106;
-- -- Inspect the result, then choose one:
-- COMMIT;
-- -- or ROLLBACK;

-- Important:
-- * INSERT adds data.
-- * SELECT reads data.
-- * UPDATE modifies data.
-- * DELETE removes rows.
-- * A missing WHERE clause in UPDATE/DELETE can affect the whole table.
-- * Use only test data while learning.

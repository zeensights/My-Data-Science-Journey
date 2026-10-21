-- SQL Practice: Data Manipulation (CRUD)
-- Questions and answers are kept together for self-study.
-- SAFETY: INSERT/UPDATE/DELETE examples below are comments by default.
-- Use a disposable practice table, or uncomment one statement at a time only after
-- confirming the target IDs are unused and the target rows are correct.
-- Re-running INSERT with an existing primary key will fail; UPDATE/DELETE change real data.

-- Q1. Insert a practice employee with ID 106.
-- Answer (uncomment only if ID 106 is unused):
-- INSERT INTO employees (employee_id, name, department, age, salary)
-- VALUES (106, 'Imran', 'Support', 25, 42000);

-- Q2. Display the row with employee_id 106.
-- Answer:
SELECT employee_id, name, department, age, salary
FROM employees
WHERE employee_id = 106;

-- Q3. Update the practice employee's salary to 44000.
-- First verify the row with SELECT above. Then uncomment if it is your test row:
-- UPDATE employees
-- SET salary = 44000
-- WHERE employee_id = 106;

-- Q4. Verify the updated salary.
-- Answer:
SELECT employee_id, name, salary
FROM employees
WHERE employee_id = 106;

-- Q5. Delete only your practice row with employee_id 106.
-- Verify the row first; uncomment only if it is your test row:
-- DELETE FROM employees
-- WHERE employee_id = 106;

-- Q6. Confirm that employee_id 106 no longer exists.
-- Answer:
SELECT *
FROM employees
WHERE employee_id = 106;

-- Q7. Insert a practice row and return the inserted values.
-- Answer (uncomment only if ID 107 is unused):
-- INSERT INTO employees (employee_id, name, department, age, salary)
-- VALUES (107, 'Mina', 'Support', 28, 46000)
-- RETURNING *;

-- Q8. Update your practice row and return the changed values.
-- Answer (uncomment only after confirming row 107 is your test row):
-- UPDATE employees
-- SET salary = 47000
-- WHERE employee_id = 107
-- RETURNING employee_id, name, salary;

-- Q9. Delete your practice row and return the deleted values.
-- Answer (uncomment only after confirming row 107 is your test row):
-- DELETE FROM employees
-- WHERE employee_id = 107
-- RETURNING *;

-- Q10. Explain why this query is dangerous. Do not run it:
-- DELETE FROM employees;
-- Answer: It deletes every row from employees because there is no WHERE clause.

-- Tip: For repeated CRUD practice, create a separate practice table instead of modifying
-- the original employees dataset. Never run UPDATE or DELETE without a carefully checked WHERE.

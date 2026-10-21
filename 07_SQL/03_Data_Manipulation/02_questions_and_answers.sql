-- SQL Practice: Data Manipulation (CRUD)
-- Questions and answers are kept together for self-study.
-- Use a disposable practice table or carefully review each query before execution.
-- Do not run UPDATE/DELETE examples against important data.

-- Q1. Insert a practice employee with ID 106.
-- Answer:
INSERT INTO employees (employee_id, name, department, age, salary)
VALUES (106, 'Imran', 'Support', 25, 42000);

-- Q2. Display the row with employee_id 106.
-- Answer:
SELECT employee_id, name, department, age, salary
FROM employees
WHERE employee_id = 106;

-- Q3. Update Imran's salary to 44000.
-- Answer:
UPDATE employees
SET salary = 44000
WHERE employee_id = 106;

-- Q4. Verify the updated salary.
-- Answer:
SELECT employee_id, name, salary
FROM employees
WHERE employee_id = 106;

-- Q5. Delete only the practice row with employee_id 106.
-- Answer:
DELETE FROM employees
WHERE employee_id = 106;

-- Q6. Confirm that employee_id 106 no longer exists.
-- Answer:
SELECT *
FROM employees
WHERE employee_id = 106;

-- Q7. Insert a row and display the inserted values using RETURNING.
-- Answer:
INSERT INTO employees (employee_id, name, department, age, salary)
VALUES (107, 'Mina', 'Support', 28, 46000)
RETURNING *;

-- Q8. Update the practice row and return the changed values.
-- Answer:
UPDATE employees
SET salary = 47000
WHERE employee_id = 107
RETURNING employee_id, name, salary;

-- Q9. Delete the practice row and return the deleted values.
-- Answer:
DELETE FROM employees
WHERE employee_id = 107
RETURNING *;

-- Q10. Explain why this query is dangerous. Do not run it:
-- DELETE FROM employees;
-- Answer: It deletes every row from employees because there is no WHERE clause.

-- Practice note:
-- If IDs 106 or 107 already exist in your table, choose unused IDs before running these examples.

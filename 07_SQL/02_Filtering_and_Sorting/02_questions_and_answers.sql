-- ============================================================
-- SQL Learning: Filtering and Sorting
-- File: 02_questions_and_answers.sql
-- Practice questions and reference answers in one file.
-- Table used: employees
-- ============================================================

-- Q1. Find employees in the Data, Finance, or HR departments.
SELECT employee_id, name, department
FROM employees
WHERE department IN ('Data', 'Finance', 'HR');

-- Q2. Find employees who are not in the Data or HR departments.
SELECT employee_id, name, department
FROM employees
WHERE department NOT IN ('Data', 'HR');

-- Q3. Find employees whose salary is between 45000 and 55000,
-- including both endpoints.
SELECT name, salary
FROM employees
WHERE salary BETWEEN 45000 AND 55000;

-- Q4. Find employees whose names start with A.
SELECT name
FROM employees
WHERE name LIKE 'A%';

-- Q5. Show all employees ordered by salary from highest to lowest.
SELECT name, salary
FROM employees
ORDER BY salary DESC;

-- Q6. Show the names and salaries of the three highest-paid employees.
SELECT name, salary
FROM employees
ORDER BY salary DESC
LIMIT 3;

-- Q7. Display each department only once.
SELECT DISTINCT department
FROM employees;

-- Q8. Find names and salaries of Data department employees whose names
-- start with S.
SELECT name, salary
FROM employees
WHERE department = 'Data'
  AND name LIKE 'S%';

-- Q9. Find employees earning between 45000 and 55000, highest salary first.
SELECT name, salary
FROM employees
WHERE salary BETWEEN 45000 AND 55000
ORDER BY salary DESC;

-- Q10. Find employees whose department is missing.
-- An empty result is valid if no department value is NULL.
SELECT employee_id, name, department
FROM employees
WHERE department IS NULL;

-- Extra practice A. Find names containing the letters "ar" (case-sensitive).
SELECT name
FROM employees
WHERE name LIKE '%ar%';

-- Extra practice B. Find names starting with A, ignoring letter case.
SELECT name
FROM employees
WHERE name ILIKE 'a%';

-- Extra practice C. Show employees sorted by department A-Z and salary
-- high-to-low within each department.
SELECT name, department, salary
FROM employees
ORDER BY department ASC, salary DESC;

-- Extra practice D. Show the two lowest-paid employees.
SELECT name, salary
FROM employees
ORDER BY salary ASC
LIMIT 2;

-- Extra practice E. Find employees with a non-missing department.
SELECT employee_id, name, department
FROM employees
WHERE department IS NOT NULL;

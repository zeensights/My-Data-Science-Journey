-- =========================================================
-- SQL LEARNING
-- LESSON 1: QUESTIONS & ANSWERS
-- =========================================================

-- Dataset: employees
-- Columns: employee_id, name, department, age, salary


-- =========================================================
-- Q1. Display all employees.
-- =========================================================

SELECT *
FROM employees;

-- Answer: All rows and columns from employees are displayed.


-- =========================================================
-- Q2. Display only employee names.
-- =========================================================

SELECT name
FROM employees;

-- Answer: The name column is displayed.


-- =========================================================
-- Q3. Display employee name, department and salary.
-- =========================================================

SELECT name, department, salary
FROM employees;

-- Answer: Only the requested three columns are displayed.


-- =========================================================
-- Q4. Find employees whose salary is greater than 50,000.
-- =========================================================

SELECT *
FROM employees
WHERE salary > 50000;

-- Answer: Returns employees earning more than 50,000.


-- =========================================================
-- Q5. Find employees who belong to the Data department.
-- =========================================================

SELECT *
FROM employees
WHERE department = 'Data';

-- Answer: Returns employees whose department is Data.


-- =========================================================
-- Q6. Find employees younger than 28.
-- =========================================================

SELECT *
FROM employees
WHERE age < 28;

-- Answer: Returns employees whose age is below 28.


-- =========================================================
-- Q7. Find employees whose salary is less than or equal to 50,000.
-- =========================================================

SELECT *
FROM employees
WHERE salary <= 50000;

-- Answer: Returns employees earning 50,000 or less.


-- =========================================================
-- Q8. Find employees who are not from the Data department.
-- =========================================================

SELECT *
FROM employees
WHERE department <> 'Data';

-- Answer: Returns employees whose department is not Data.


-- =========================================================
-- Q9. Find Data employees earning more than 50,000.
-- =========================================================

SELECT *
FROM employees
WHERE department = 'Data'
AND salary > 50000;

-- Answer: Both conditions must be true.


-- =========================================================
-- Q10. Find employees from Data OR Finance.
-- =========================================================

SELECT *
FROM employees
WHERE department = 'Data'
OR department = 'Finance';

-- Answer: Returns employees belonging to either department.


-- =========================================================
-- Q11. Find employees older than 25.
-- =========================================================

SELECT name, age
FROM employees
WHERE age > 25;

-- Answer: Returns names and ages of employees older than 25.


-- =========================================================
-- Q12. Find employees with salary equal to 48,000.
-- =========================================================

SELECT *
FROM employees
WHERE salary = 48000;

-- Answer: Returns employees whose salary is exactly 48,000.


-- =========================================================
-- Q13. Find employees whose age is greater than or equal to 27.
-- =========================================================

SELECT *
FROM employees
WHERE age >= 27;

-- Answer: Returns employees aged 27 or older.


-- =========================================================
-- Q14. Find employees from Finance with salary greater than 55,000.
-- =========================================================

SELECT *
FROM employees
WHERE department = 'Finance'
AND salary > 55000;

-- Answer: Both department and salary conditions must be true.


-- =========================================================
-- Q15. Find employees who are either from HR OR earn more than 55,000.
-- =========================================================

SELECT *
FROM employees
WHERE department = 'HR'
OR salary > 55000;

-- Answer: An employee is returned if either condition is true.


-- =========================================================
-- QUICK REVISION
-- =========================================================
-- SELECT  -> chooses columns
-- FROM    -> chooses the table
-- WHERE   -> filters rows
-- AND     -> all conditions must be true
-- OR      -> at least one condition must be true
--
-- =========================================================
-- END OF LESSON 1
-- =========================================================

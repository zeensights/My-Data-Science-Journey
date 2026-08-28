-- =========================================================
-- SQL BASICS - PRACTICE QUESTIONS
-- Topics:
-- SELECT | FROM | WHERE | Operators
-- AND | OR | NOT | IN | NOT IN
-- =========================================================


-- =========================================================
-- Q1. SELECT
-- Display the Name column from Employees.
-- =========================================================

SELECT Name
FROM Employees;


-- =========================================================
-- Q2. SELECT MULTIPLE COLUMNS
-- Display Name and Salary from Employees.
-- =========================================================

SELECT Name, Salary
FROM Employees;


-- =========================================================
-- Q3. SELECT ALL COLUMNS
-- Display all columns from Employees.
-- =========================================================

SELECT *
FROM Employees;


-- =========================================================
-- Q4. WHERE + GREATER THAN
-- Find employees whose Salary is greater than 40000.
-- =========================================================

SELECT *
FROM Employees
WHERE Salary > 40000;


-- =========================================================
-- Q5. WHERE + TEXT
-- Find employees who belong to the HR department.
-- =========================================================

SELECT *
FROM Employees
WHERE Department = 'HR';


-- =========================================================
-- Q6. LESS THAN
-- Find employees whose Salary is less than 30000.
-- =========================================================

SELECT *
FROM Employees
WHERE Salary < 30000;


-- =========================================================
-- Q7. NOT EQUAL
-- Find employees whose Salary is not equal to 35000.
-- =========================================================

SELECT *
FROM Employees
WHERE Salary != 35000;


-- =========================================================
-- Q8. AND
-- Find employees who work in Sales
-- AND have Salary greater than 30000.
-- =========================================================

SELECT *
FROM Employees
WHERE Department = 'Sales'
AND Salary > 30000;


-- =========================================================
-- Q9. OR
-- Find employees who work in HR OR IT.
-- =========================================================

SELECT *
FROM Employees
WHERE Department = 'HR'
OR Department = 'IT';


-- =========================================================
-- Q10. NOT
-- Find employees who are NOT from Sales.
-- =========================================================

SELECT *
FROM Employees
WHERE NOT Department = 'Sales';


-- =========================================================
-- Q11. IN
-- Find employees who work in Sales or IT
-- using IN.
-- =========================================================

SELECT *
FROM Employees
WHERE Department IN ('Sales', 'IT');


-- =========================================================
-- Q12. NOT IN
-- Find employees who are NOT from Sales or HR
-- using NOT IN.
-- =========================================================

SELECT *
FROM Employees
WHERE Department NOT IN ('Sales', 'HR');


-- =========================================================
-- Q13. AND + RANGE
-- Find employees whose Salary is greater than 30000
-- AND less than 45000.
-- =========================================================

SELECT *
FROM Employees
WHERE Salary > 30000
AND Salary < 45000;


-- =========================================================
-- Q14. IN + AND
-- Find employees from Sales or IT
-- AND whose Salary is greater than 30000.
-- =========================================================

SELECT *
FROM Employees
WHERE Department IN ('Sales', 'IT')
AND Salary > 30000;


-- =========================================================
-- Q15. NOT + AND
-- Find employees who are NOT from HR
-- AND NOT from Sales.
-- =========================================================

SELECT *
FROM Employees
WHERE Department != 'HR'
AND Department != 'Sales';


-- =========================================================
-- QUICK REVISION
-- =========================================================

-- SELECT  → chooses columns
-- FROM    → chooses the table
-- WHERE   → filters rows
-- AND     → all conditions must be true
-- OR      → at least one condition must be true
-- NOT     → reverses/excludes a condition
-- IN      → matches multiple values
-- NOT IN  → excludes multiple values
-- =========================================================
-- SQL LEARNING
-- SQL FILTERING BASICS
-- =========================================================


-- =========================================================
-- 1. SELECT
-- =========================================================
-- SELECT is used to choose the columns we want to retrieve.


SELECT Name
FROM Employees;


SELECT Name, Department
FROM Employees;


SELECT *
FROM Employees;


-- SELECT = What columns do I want?



-- =========================================================
-- 2. FROM
-- =========================================================
-- FROM tells SQL which table contains the data.


SELECT Name
FROM Employees;


-- FROM = Which table contains the data?



-- =========================================================
-- 3. WHERE
-- =========================================================
-- WHERE is used to filter rows based on a condition.


SELECT Name, Salary
FROM Employees
WHERE Salary > 30000;


SELECT *
FROM Employees
WHERE Department = 'Sales';


-- WHERE = Which rows do I want?



-- =========================================================
-- 4. COMPARISON OPERATORS
-- =========================================================
--
-- =    Equal to
-- >    Greater than
-- <    Less than
-- >=   Greater than or equal to
-- <=   Less than or equal to
-- !=   Not equal to
-- <>   Not equal to
--


-- Equal to

SELECT *
FROM Employees
WHERE Salary = 35000;


-- Greater than

SELECT *
FROM Employees
WHERE Salary > 35000;


-- Less than

SELECT *
FROM Employees
WHERE Salary < 35000;


-- Greater than or equal to

SELECT *
FROM Employees
WHERE Salary >= 35000;


-- Less than or equal to

SELECT *
FROM Employees
WHERE Salary <= 35000;


-- Not equal to

SELECT *
FROM Employees
WHERE Salary != 35000;



-- =========================================================
-- 5. TEXT VALUES
-- =========================================================
-- Text values are written inside single quotes.
-- Numbers do not need quotes.


SELECT *
FROM Employees
WHERE Department = 'HR';


SELECT *
FROM Employees
WHERE Salary > 30000;



-- =========================================================
-- 6. AND
-- =========================================================
-- AND is used when ALL conditions must be true.


SELECT *
FROM Employees
WHERE Department = 'Sales'
AND Salary > 30000;


-- Meaning:
-- Department must be Sales
-- AND
-- Salary must be greater than 30000



-- =========================================================
-- 7. OR
-- =========================================================
-- OR is used when at least ONE condition must be true.


SELECT *
FROM Employees
WHERE Department = 'Sales'
OR Department = 'IT';


-- Meaning:
-- Department can be Sales
-- OR
-- Department can be IT



-- =========================================================
-- 8. NOT
-- =========================================================
-- NOT reverses a condition.


SELECT *
FROM Employees
WHERE NOT Department = 'HR';


-- Meaning:
-- Department should NOT be HR.



-- =========================================================
-- 9. IN
-- =========================================================
-- IN is used to match multiple possible values.


SELECT *
FROM Employees
WHERE Department IN ('Sales', 'IT');


-- This is similar to:
--
-- WHERE Department = 'Sales'
-- OR Department = 'IT';



-- =========================================================
-- 10. NOT IN
-- =========================================================
-- NOT IN is used to exclude multiple values.


SELECT *
FROM Employees
WHERE Department NOT IN ('Sales', 'HR');


-- Meaning:
-- Department should NOT be Sales
-- AND
-- Department should NOT be HR.



-- =========================================================
-- 11. COMBINING IN WITH AND
-- =========================================================
-- IN and AND can be used together for more precise filtering.


SELECT *
FROM Employees
WHERE Department IN ('Sales', 'IT')
AND Salary > 30000;


-- Meaning:
-- Employee must belong to Sales or IT
-- AND
-- Salary must be greater than 30000.



-- =========================================================
-- 12. QUICK SUMMARY
-- =========================================================
--
-- SELECT   = Choose columns
-- FROM     = Choose table
-- WHERE    = Filter rows
-- AND      = Both conditions must be true
-- OR       = At least one condition must be true
-- NOT      = Exclude / reverse a condition
-- IN       = Match multiple values
-- NOT IN   = Exclude multiple values
--
-- =========================================================
-- END
-- =========================================================
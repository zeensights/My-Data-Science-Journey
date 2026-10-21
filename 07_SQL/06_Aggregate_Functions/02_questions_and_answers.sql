-- Aggregate function practice: questions and answers

-- Q1. Count all employees.
-- Answer:
SELECT COUNT(*) AS employee_count FROM employees;

-- Q2. Find the highest salary.
-- Answer:
SELECT MAX(salary) AS highest_salary FROM employees;

-- Q3. Find the lowest salary.
-- Answer:
SELECT MIN(salary) AS lowest_salary FROM employees;

-- Q4. Calculate the average salary.
-- Answer:
SELECT AVG(salary) AS average_salary FROM employees;

-- Q5. Calculate the sum of all salaries.
-- Answer:
SELECT SUM(salary) AS total_salary FROM employees;

-- Q6. Count employees who have a non-NULL department.
-- Answer:
SELECT COUNT(department) AS employees_with_department FROM employees;

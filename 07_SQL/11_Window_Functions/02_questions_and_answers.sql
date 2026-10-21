-- Window function practice: questions and answers

-- Q1. Rank employees by salary, highest first.
-- Answer:
SELECT name, salary, RANK() OVER (ORDER BY salary DESC) AS salary_rank
FROM employees;

-- Q2. Number employees from highest to lowest salary within each department.
-- Answer:
SELECT name, department, salary,
       ROW_NUMBER() OVER (PARTITION BY department ORDER BY salary DESC) AS row_num
FROM employees;

-- Q3. Return the top-paid employee in each department.
-- Answer:
WITH ranked_employees AS (
    SELECT name, department, salary,
           ROW_NUMBER() OVER (PARTITION BY department ORDER BY salary DESC, employee_id) AS rn
    FROM employees
)
SELECT name, department, salary
FROM ranked_employees
WHERE rn = 1;

-- Q4. How do RANK and DENSE_RANK differ?
-- Answer: RANK skips rank numbers after ties; DENSE_RANK does not.

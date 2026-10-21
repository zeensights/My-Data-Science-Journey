-- Window functions calculate across related rows without collapsing them.
-- ROW_NUMBER gives a unique sequence; RANK leaves gaps after ties; DENSE_RANK does not.

SELECT name, department, salary,
       ROW_NUMBER() OVER (PARTITION BY department ORDER BY salary DESC) AS row_num,
       RANK() OVER (PARTITION BY department ORDER BY salary DESC) AS salary_rank,
       DENSE_RANK() OVER (PARTITION BY department ORDER BY salary DESC) AS dense_salary_rank
FROM employees;

-- Overall salary ranking:
SELECT name, salary,
       RANK() OVER (ORDER BY salary DESC) AS salary_rank
FROM employees;

-- PARTITION BY restarts the window calculation per group.
-- Unlike GROUP BY, a window function normally keeps each input row.

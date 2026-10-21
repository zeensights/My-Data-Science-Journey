-- DDL practice questions and answers (examples are commented to avoid accidental execution)

-- Q1. Create a products table with an integer primary key and a required name.
-- Answer:
-- CREATE TABLE practice_products (
--   product_id INTEGER PRIMARY KEY,
--   product_name VARCHAR(100) NOT NULL
-- );

-- Q2. Add a price column.
-- Answer:
-- ALTER TABLE practice_products ADD COLUMN price NUMERIC(10,2);

-- Q3. Add a category column.
-- Answer:
-- ALTER TABLE practice_products ADD COLUMN category VARCHAR(50);

-- Q4. Remove the category column.
-- Answer:
-- ALTER TABLE practice_products DROP COLUMN category;

-- Q5. What is the difference between TRUNCATE and DROP?
-- Answer: TRUNCATE removes rows but keeps the table; DROP removes the table object.

-- Q6. Remove every row but keep the table. Do not run on valuable data.
-- Answer:
-- TRUNCATE TABLE practice_products;

-- Q7. Delete the practice table itself. Do not run unless you created it for practice.
-- Answer:
-- DROP TABLE practice_products;

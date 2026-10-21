-- Constraints and relationships: questions with answers

-- Q1. Which constraint uniquely identifies each row?
-- Answer: PRIMARY KEY.

-- Q2. Which constraint links products.category_id to categories.category_id?
-- Answer: FOREIGN KEY (REFERENCES).

-- Q3. Require a product name and prevent negative prices.
-- Answer:
-- product_name VARCHAR(100) NOT NULL,
-- price NUMERIC(10,2) CHECK (price >= 0)

-- Q4. Give stock_quantity a default of zero.
-- Answer:
-- stock_quantity INTEGER NOT NULL DEFAULT 0

-- Q5. Prevent duplicate category names.
-- Answer:
-- category_name VARCHAR(80) UNIQUE NOT NULL

-- Q6. What relationship lets one category have many products?
-- Answer: One-to-many, commonly implemented by a foreign key on products.

-- Q7. Why normalize a database?
-- Answer: To reduce redundant data and avoid insert, update, and delete anomalies.

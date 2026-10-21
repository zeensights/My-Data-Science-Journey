-- JOIN practice: questions with answers (illustrative products/categories tables)

-- Q1. List products with their category names, keeping only matches.
-- Answer:
-- SELECT p.product_name, c.category_name
-- FROM products AS p
-- INNER JOIN categories AS c ON c.category_id = p.category_id;

-- Q2. Show every category, including categories with no products.
-- Answer:
-- SELECT c.category_name, p.product_name
-- FROM categories AS c
-- LEFT JOIN products AS p ON p.category_id = c.category_id;

-- Q3. Return all products and all categories, matched where possible.
-- Answer:
-- SELECT p.product_name, c.category_name
-- FROM products AS p
-- FULL OUTER JOIN categories AS c ON c.category_id = p.category_id;

-- Q4. Which JOIN keeps only rows with a match in both tables?
-- Answer: INNER JOIN.

-- Q5. Why can a join return more rows than either input table?
-- Answer: A key may match multiple rows; one-to-many relationships naturally produce multiple result rows.

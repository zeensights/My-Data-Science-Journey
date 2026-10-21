-- PostgreSQL JOINs combine related rows from multiple tables.
-- These examples use illustrative categories and products tables.

-- INNER JOIN: only matching rows from both tables.
-- SELECT p.product_name, c.category_name
-- FROM products AS p
-- INNER JOIN categories AS c ON c.category_id = p.category_id;

-- LEFT JOIN: all rows from the left table; unmatched right-side values become NULL.
-- SELECT c.category_name, p.product_name
-- FROM categories AS c
-- LEFT JOIN products AS p ON p.category_id = c.category_id;

-- RIGHT JOIN: all rows from the right table and matching rows from the left.
-- SELECT p.product_name, c.category_name
-- FROM products AS p
-- RIGHT JOIN categories AS c ON c.category_id = p.category_id;

-- FULL OUTER JOIN: matching rows plus unmatched rows from either side.
-- SELECT p.product_name, c.category_name
-- FROM products AS p
-- FULL OUTER JOIN categories AS c ON c.category_id = p.category_id;

-- Use table aliases for readability. Always join on the correct relationship keys.
-- A missing or incorrect join condition can create unintended row multiplication.

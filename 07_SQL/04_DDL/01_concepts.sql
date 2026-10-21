-- PostgreSQL DDL: defining and changing table structure
-- CREATE makes objects; ALTER changes structure; DROP removes objects; TRUNCATE removes all rows.
-- Run these examples in a practice database, not on important data.

-- Create a practice table:
-- CREATE TABLE practice_products (
--   product_id INTEGER PRIMARY KEY,
--   product_name VARCHAR(100) NOT NULL,
--   price NUMERIC(10,2) CHECK (price >= 0),
--   stock_quantity INTEGER NOT NULL DEFAULT 0
-- );

-- Add a column:
-- ALTER TABLE practice_products ADD COLUMN category VARCHAR(50);

-- Change a column type (ensure existing values are compatible):
-- ALTER TABLE practice_products ALTER COLUMN product_name TYPE VARCHAR(150);

-- Remove a column:
-- ALTER TABLE practice_products DROP COLUMN category;

-- Remove all rows while keeping the table:
-- TRUNCATE TABLE practice_products;

-- Remove the table itself:
-- DROP TABLE practice_products;

-- Safety: DROP removes the object; TRUNCATE removes all rows. Inspect the target first.

-- PostgreSQL constraints and relationships
-- Constraints protect data quality and relationships between tables.

-- PRIMARY KEY uniquely identifies each row and cannot be NULL.
-- FOREIGN KEY requires a referenced row to exist.
-- NOT NULL requires a value.
-- UNIQUE prevents duplicate values.
-- CHECK validates a condition.
-- DEFAULT supplies a value when one is omitted.

-- Example parent table:
-- CREATE TABLE categories (
--   category_id INTEGER PRIMARY KEY,
--   category_name VARCHAR(80) NOT NULL UNIQUE
-- );

-- Example child table:
-- CREATE TABLE products (
--   product_id INTEGER PRIMARY KEY,
--   product_name VARCHAR(100) NOT NULL,
--   category_id INTEGER REFERENCES categories(category_id),
--   price NUMERIC(10,2) NOT NULL CHECK (price >= 0),
--   stock_quantity INTEGER NOT NULL DEFAULT 0 CHECK (stock_quantity >= 0)
-- );

-- A one-to-many relationship: one category can contain many products.
-- Normalization reduces unnecessary duplication and update anomalies.
-- Use descriptive names and choose data types that match the data.

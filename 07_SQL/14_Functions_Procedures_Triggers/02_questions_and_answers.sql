-- Functions, procedures, and triggers: questions with answers

-- Q1. What does a SQL function return?
-- Answer: A value or a set/table of values, according to its declared return type.

-- Q2. How is a PostgreSQL procedure called?
-- Answer: With CALL procedure_name(...).

-- Q3. What is a trigger?
-- Answer: A database mechanism that invokes a trigger function automatically on configured events.

-- Q4. Name common trigger events.
-- Answer: INSERT, UPDATE, and DELETE; PostgreSQL also supports TRUNCATE triggers in appropriate contexts.

-- Q5. Give one use case for a trigger.
-- Answer: Audit logging, provided the behavior is carefully tested and documented.

-- Q6. Why should triggers be used cautiously?
-- Answer: They introduce implicit side effects that can make debugging and data flows harder to understand.

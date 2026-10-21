-- PostgreSQL functions, procedures, and triggers
-- Educational examples: create objects only in a practice database.

-- Function: returns a value.
-- CREATE OR REPLACE FUNCTION add_tax(amount NUMERIC, tax_rate NUMERIC)
-- RETURNS NUMERIC LANGUAGE SQL IMMUTABLE
-- AS $$ SELECT amount * (1 + tax_rate); $$;
-- SELECT add_tax(100, 0.18);

-- Procedure: invoked with CALL.
-- CREATE OR REPLACE PROCEDURE log_message(message_text TEXT)
-- LANGUAGE plpgsql AS $$
-- BEGIN
--   RAISE NOTICE 'Message: %', message_text;
-- END;
-- $$;
-- CALL log_message('Practice run');

-- Trigger: invokes a trigger function automatically for configured events such as INSERT,
-- UPDATE, or DELETE. Triggers are useful for audit logs but can create hidden side effects.
-- Document and test trigger behavior carefully, including rollback behavior.

-- Functions return a value/set; procedures are called with CALL. Transaction-control
-- capabilities depend on the execution context and PostgreSQL rules.

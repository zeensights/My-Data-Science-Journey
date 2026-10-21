-- PostgreSQL transactions group operations into one logical unit.
-- BEGIN starts a transaction; COMMIT saves its changes; ROLLBACK discards uncommitted changes.

-- Safe demonstration using a disposable practice table:
-- BEGIN;
-- UPDATE practice_accounts SET balance = balance - 100 WHERE account_id = 1;
-- UPDATE practice_accounts SET balance = balance + 100 WHERE account_id = 2;
-- -- Verify both balances before deciding:
-- SELECT * FROM practice_accounts WHERE account_id IN (1, 2);
-- COMMIT;
-- -- If checks fail, use ROLLBACK instead of COMMIT.

-- Never commit a transfer unless both sides and business rules have been validated.
-- PostgreSQL also supports savepoints for partial rollback within a transaction.
-- Transaction behavior depends on client autocommit settings; understand your SQL editor.

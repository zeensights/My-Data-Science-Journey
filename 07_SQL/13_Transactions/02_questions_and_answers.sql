-- Transactions: questions with answers

-- Q1. Which command starts a transaction?
-- Answer: BEGIN (or START TRANSACTION).

-- Q2. Which command saves the transaction's changes?
-- Answer: COMMIT.

-- Q3. Which command discards uncommitted changes?
-- Answer: ROLLBACK.

-- Q4. Why should a fund transfer update both accounts in one transaction?
-- Answer: To prevent only one side of the transfer from being committed.

-- Q5. What is a SAVEPOINT?
-- Answer: A named point within a transaction to which you can roll back without cancelling the entire transaction.

-- Q6. Why verify rows and balances before COMMIT?
-- Answer: To check that the intended records changed and business rules were respected.

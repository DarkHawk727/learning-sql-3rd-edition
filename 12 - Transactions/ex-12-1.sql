START TRANSACTION

UPDATE account
SET avail_balance = avail_balance - 50, last_activity_date = NOW()
WHERE account_id = 123;

INSERT INTO transaction VALUES (1003, NOW(), 123, 'D', 50);

UPDATE account
SET avail_balance = avail_balance + 50, last_activity_date = NOW()
WHERE account_id = 789;

INSERT INTO transaction VALUES (1004, NOW(), 789, 'C', 50);

COMMIT;

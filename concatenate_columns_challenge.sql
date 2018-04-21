-- Use CONCAT to combine columns with strings
-- Use SUM to total the amount
SELECT CONCAT("Wally West spent a total of") AS full_name,
SUM(amount) AS total FROM my_db.orders WHERE Person_id = 1;
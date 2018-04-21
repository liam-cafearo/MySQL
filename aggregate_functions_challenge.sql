-- use the AVG function to calculate the average spend
-- from the 'amount column on the 'orders' table. 
SELECT AVG(amount) as average_spend,
FROM my_db.orders WHERE person_id = 1;
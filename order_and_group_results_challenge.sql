/**
 * Challenge A
 */

SELECT * FROM my_db.orders
WHERE created_at
BETWEEN
'2015-09-08 14:48:00'
AND
'2016-09-08 15:34:00'
AND NOT
amount > 12.00
ORDER BY amount DESC;

/**
 * Challenge B
 */
SELECT person_id, COUNT(amount)
FROM my_db.orders;
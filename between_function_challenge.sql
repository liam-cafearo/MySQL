/**
 * create a few more orders for each person
 * copied the values from the challenge answer 
 * for ease, plus needed a reminder for adding values
 * the person_id is not 2 and 3 as my database doesn't
 * hold those values.
 */
INSERT INTO `my_db`.`orders` (
	`person_id`,
    `amount`
) VALUES
    (1, 17.99),
    (1, 13.00),
    (1, 4.81),
    (1, 7.81),
	(5, 12.04),
    (5, 13.50),
    (5, 18.00),
    (5, 20.00),
	(6, 3.04),
    (6, 3.77),
    (6, 9.89),
    (6, 10.11),
    (7, 6.07),
    (7, 12.21),
    (7, 9.09),
    (7, 14.97);

/** 
 * Select orders for only the second and third persons
 * Didn't copy answer for this one.
 */
SELECT * FROM my_db.orders
WHERE person_id
BETWEEN 5 AND 7;
-- Add three new people to people table
INSERT INTO `my_db`.`people` (
	`first_name`,
    `second_name`,
    `DOB`
) VALUES
	("Bruce", "Wayne", STR_TO_DATE("27-05-1939", "%d-%m-%Y")),
    ("Barbara", "Gordon", STR_TO_DATE("03-01-1967", "%d-%m-%Y")),
    ("Clark", "Kent", STR_TO_DATE("01-06-1938", "%d-%m-%Y"));

-- Create three orders for each new person
INSERT INTO `my_db`.`orders` (
	`person_id`,
    `amount`
) VALUES
	(5, 12.34),
    (5, 10.09),
    (5, 9.99),
    (6, 5.67),
    (6, 2.90),
    (6, 7.11),
    (7, 9.01),
    (7, 10.75),
    (7, 11.11);
    
-- SELECT DISTINCT for each unique person_id's in orders table
SELECT DISTINCT(person_id) FROM my_db.orders;
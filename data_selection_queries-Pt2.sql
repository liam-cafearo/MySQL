USE my_db;

/**
 * Create a new table called `articles`
 */
CREATE TABLE articles (
	id INTEGER AUTO_INCREMENT,
    title VARCHAR(200),
    content TEXT,
    person_id INT NOT NULL,
    PRIMARY KEY(id)
);

/**
 * INsert some data into our newly created `arcticles` table
 */
 INSERT INTO articles (
	`title`,
	`content`,
	`person_id`
) VALUES
	('article 1', 'some text', 1),
    ('article 2', 'some more text', 1),
    ('article 3', 'even more text', 1),
    ('article 4', 'wow so much text', 1);

/**
 * Create a select statement using the LIKE keyword
 */
SELECT * FROM articles WHERE title LIKE '%article%';

/**
 * Create a select statement without using the BETWEEN keyword
 */
SELECT * FROM my_db.orders
WHERE
created_at >= '2015-09-08 14:48:00'
AND
created at <= '2016-09-08 15:34:00';

/**
 * Create a select statement using the BETWEEN keyword
 */
SELECT * FROM my_db.orders
WHERE created_at
BETWEEN
'2015-09-08 14:48:00'
AND
'2016-09-08 15:34:00';

/**
 * Using AND multiple times in your select query
 */
SELECT * FROM my_db.orders
WHERE created_at
BETWEEN
'2015-09-08 14:48:00'
AND
'2016-09-08 15:34:00'
AND
amount > 12.00;

/**
 * Using the NOT keyword
 */
SELECT * FROM my_db.orders
WHERE created_at
BETWEEN
'2015-09-08 14:48:00'
AND
'2016-09-08 15:34:00'
AND NOT
amount > 12.00;

/**
 * Create a select query that uses the NOT keyword
 * with the BETWEEN keyword
 */
SELECT * FROM my_db.orders
WHERE amount
NOT BETWEEN
13
AND
16;

/**
 * Ordering selected data
 */
SELECT * FROM my_db.orders
WHERE created_at
BETWEEN
'2015-09-08 14:48:00'
AND
'2016-09-08 15:34:00'
AND
amount > 12.00
ORDER BY person_id;

/**
 * Descending order by using the DESC keyword
 */
SELECT * FROM my_db.orders
WHERE created_at
BETWEEN
'2015-09-08 14:48:00'
AND
'2016-09-08 15:34:00'
AND
amount > 12.00
ORDER BY person_id DESC;

/**
 * Create a select query using GROUP BY keyword
 */
SELECT person_id, COUNT(amount)
FROM my_db.orders GROUP BY person_id;
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
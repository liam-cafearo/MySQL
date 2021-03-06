/**
 * Create database
 */
create database my_db;


/**
 * Tell MySQL which Database we wish to use
 */
USE my_db;


/**
 * Create a table called people that will
 * have the following rows - 
 * id, first_name, second_name, DOB
 */
CREATE TABLE people (
	id INTEGER AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    second_name VARCHAR(50) NOT NULL,
    DOB DATE NOT NULL,
    PRIMARY KEY (id)
);


/**
 * Create another table that references the 'people' table
 * using a foreign key relationship.
 */
CREATE TABLE orders (
	id INTEGER AUTO_INCREMENT,
    amount DECIMAL(18,2) NOT NULL,
    person_id INT,
    PRIMARY KEY (id),
    FOREIGN KEY (person_id) REFERENCES people(id),
    CHECK(amount>0)
);

/**
 * Create an index for the 'people' table
 * using te first_name field
 */
CREATE INDEX first_name_index ON people (first_name);

/**
 * Insert a new record into the 'people' table
 */
INSERT INTO my_db.people (
	first_name,
    second_name,
    DOB
) VALUES (
	'John',
    'Lennon',
    STR_TO_DATE('1/01/2012', '%d/%m/%Y')
);

/**
 * Select all rows from the 'people' table
 */
SELECT * FROM my_db.people;

/**
 * Insert a new record into the 'orders' table
 */
INSERT INTO my_db.orders (
	amount,
    person_id
) VALUES (
	12.02
    1
);

/**
 * Insert a multiple records into the 'orders' table
 */
INSERT INTO my_db.orders (
	amount,
    person_id
) VALUES
	(12.02, 1),
    (9.02, 1)
    (13.02, 1),
    (15.02, 1);

/**
 * Create a new table called 'profiles'
 */
CREATE TABLE profiles (
	id INTEGER AUTO_INCREMENT,
    person_id INT,
    address text,
    update_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (id),
    FOREIGN KEY (person_id) REFERENCES people(id)
);

/**
 * Update the address of a person in the 'profiles'
 */
UPDATE `my_db`.`profiles`
SET `address` = "la New Address"
WHERE `person_id` = 2;

/**
 * Yoni advised that it can be just the following
 * as USE my_bd; is used beforehand
 */
UPDATE profiles SET id=3 WHERE person_id=2;

/**
 * How to delete rows format
 */
DELETE FROM database_name.my_table_name
WHERE <where_expression>; 

/** 
 * WHERE statement specifies the rows to delete
 * otherwise it will delete all rows
 */
 
/**
 * EXAMPLE
 */
DELETE FROM my_db.people
WHERE id = 3;

/**
 * Delete a user from out 'people' table
 * the below is called a 'cascaded' delete
 * this is used when a FOREIGN KEY constaint is present
 */

DELETE FROM my_db.profiles
WHERE person_id = 3;

DELETE FROM my_db.orders
WHERE person_id = 3;

DELETE FROM my_db.people
WHERE id = 3;
-- create database
create database challenge_db;

-- tell mySQL which database we wish to use
USE challenge_db;

-- create a people table
create table people (
    id INTEGER AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    second_name VARCHAR(50) NOT NULL,
    DOB DATE NOT NULL,
    PRIMARY KEY (id)
);

-- create orders table, this contains a FOREIGN KEY
create table orders (
    id INTEGER AUTO_INCREMENT,
    amount DECIMAL(18,2) NOT NULL,
    person_id INT,
    PRIMARY KEY (id),
    FOREIGN KEY (person_id) REFERENCES people(id),
    CHECK(amount>0)
);

-- create a profiles table
create table profiles (
    id INTEGER AUTO_INCREMENT,
    person_id INT,
    address text,
    update_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (id),
    FOREIGN KEY (person_id) REFERENCES people(id)
);

-- create an index
CREATE INDEX first_name_index ON people (first_name);

-- Insert a new person
INSERT INTO challenge_db.people (
    first_name,
    second_name,
    DOB
) VALUES (
    'John',
    'Lennon',
    STR_TO_DATE('1/01/2012', '%d/%m/%Y')
);

-- add our person to the profiles table
INSERT INTO challenge_db.profiles (
    'person_id',
    'address'
) VALUES (
    1,
    "Central City"
);

-- insert multiple records in one command to the 'orders' table
INSERT INTO challenge_db.orders (
    amount,
    person_id
) VALUES
    (12.02, 1),
    (9.02, 1),
    (13.02, 1),
    (15.02, 1);
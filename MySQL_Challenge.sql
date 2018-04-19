-- create database
create database challenge_sql;

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
    update at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (id),
    FOREIGN KEY (person_id) REFERENCES people(id)
);
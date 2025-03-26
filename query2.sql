CREATE DATABASE 19_march;
USE 19_march;

CREATE TABLE pharmacy (
    pharmacy_id INT ,
    pharmacy_name VARCHAR(100),
    location VARCHAR(100),
    contact_number VARCHAR(15),
    email VARCHAR(100)
);
desc pharmacy;
ALTER TABLE pharmacy
ADD COLUMN medicines_name varchar(30),
ADD COLUMN workers_name varchar(30);

ALTER TABLE pharmacy 
DROP COLUMN workers_name;
SELECT * FROM pharmacy;
-- Rename----
ALTER TABLE pharmacy
CHANGE COLUMN pharmacy_id id INT,
CHANGE COLUMN pharmacy_name name VARCHAR(100),
CHANGE COLUMN contact_number contact VARCHAR(15);


-- Change datatype -=----
ALTER TABLE pharmacy
MODIFY COLUMN contact_number VARCHAR(20),
MODIFY COLUMN email TEXT;

CREATE TABLE paper_factory(
    factory_id int,
    factory_location varchar(90),
    machine_name VARCHAR(100),
    email_id varchar(100),
    no_workers int
);
ALTER TABLE paper_factory
ADD COLUMN paper_type varchar(30),
ADD COLUMN paper_quantity int;
 
ALTER TABLE paper_factory 
DROP COLUMN no_workers;
SELECT * FROM paper_factory;

-- Rename ---
ALTER TABLE paper_factory
CHANGE COLUMN factory_id id INT,
CHANGE COLUMN factory_location location VARCHAR(90),
CHANGE COLUMN machine_name machine_type VARCHAR(100);

 CREATE TABLE Area_info(
    no_of_houses int,
    park_names varchar(20),
    sqr_ft bigint,
	male_population int,
    female_population int
);
ALTER TABLE Area_info
ADD COLUMN no_of_shops int,
ADD COLUMN vehicles_types int;
SELECT * FROM Area_info;



 CREATE TABLE shopping_malls (
    mall_id int ,
    area_id int,
    mall_name varchar(100),
    mall_type varchar(50), 
    number_of_stores int
);

SELECT * FROM shopping malls;
ALTER TABLE shopping_malls
ADD COLUMN no_of_foodshops int,
ADD COLUMN no_floors int;


CREATE TABLE course_registration (
    registration_id int,
    student_id int,
    course_id int,
    registration_date date,
    grade varchar(2)
);

desc course_registration;
SELECT * FROM course_registration;
ALTER TABLE course_registration 
DROP COLUMN registration_id;

ALTER TABLE course_registration
ADD COLUMN registration_date_time DATETIME, 
ADD COLUMN course_duration INT; 

-- Change datatype ----
ALTER TABLE course_registration
MODIFY COLUMN registration_date DATETIME,
MODIFY COLUMN grade CHAR(1);

  


-- Rename -----
ALTER TABLE Area_info
CHANGE COLUMN no_of_houses house_count INT,
CHANGE COLUMN park_names park_name VARCHAR(20),
CHANGE COLUMN sqr_ft area_in_sqft BIGINT;

-- Rename ----
ALTER TABLE shopping_malls
CHANGE COLUMN mall_id id INT,
CHANGE COLUMN mall_name name VARCHAR(100),
CHANGE COLUMN number_of_stores store_count INT;

-- Rename -----
ALTER TABLE course_registration
CHANGE COLUMN registration_id id INT,
CHANGE COLUMN student_id student_number INT,
CHANGE COLUMN course_id course_code INT;


-- Change datatype -----
ALTER TABLE paper_factory
MODIFY COLUMN no_workers BIGINT;

-- Change datatype ----
ALTER TABLE Area_info
MODIFY COLUMN male_population BIGINT,
MODIFY COLUMN female_population BIGINT;

-- Change datatype -----
ALTER TABLE shopping_malls
MODIFY COLUMN mall_id BIGINT,
MODIFY COLUMN area_id BIGINT;

    
    
    




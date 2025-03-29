CREATE DATABASE 27_march;
USE 27_march;
CREATE TABLE bmtc_details(
id int,
bus_color varchar(20),
bus_number_plate varchar(10), 
bus_driver_name varchar(30),
bus_conductor_name varchar(30),
no_of_seats int,
no_of_womens_seats int,
no_of_doors int,
route_name varchar(30),
bus_type varchar(20)
);

select * from bmtc_details;

INSERT into bmtc_details values(1,'Red','KA09FA20','Surendra','Malati',30,8,2,'Shivajinagar','AC');
INSERT INTO bmtc_details values(2,'Green','KA09FA21','Mahesh','Pankaj',35,7,2,'Mejastic','Non-AC');
INSERT into bmtc_details values(3,'Purple','KA09FM22','Priyank','Sumanth',45,8,2,'Bhanshankari','AC');
INSERT into bmtc_details values(4,'Sykblue','KA09FM23','Shankar','Archan',35,4,2,'KR_Market','Non-AC');
INSERT into bmtc_details values(5,'Orange','KA09FB24','Umesh','Dinesh',26,5,2,'RTNagar','Electric');
INSERT into bmtc_details values(6,'Marron','KA09FS25','Vishnav','Ambreesh',28,4,2,'Mejastic','Non-AC');
INSERT into bmtc_details values(7,'Pink','KA09FA026','Harshan','Shankari',29,4,2,'BTM','Non-AC');
INSERT into bmtc_details values(8,'Red','KA09FD27','Vinay','Amar',30,6,2,'Devarabeesanahally','Non-AC');
INSERT into bmtc_details values(9,'Green','KA09FT28','Vikram','Krishna',27,8,2,'Shankarnagar','Electric');
INSERT into bmtc_details values(10,'SkyBlue','KA09FJ29','Anil','Ajay',25,6,2,'Kengeri','AC');
INSERT into bmtc_details values(11,'Darkblue','KA09FA30','Sukesh','Sachin',40,6,2,'Shivajinagar','Non-AC');
INSERT into bmtc_details values(12,'Orange','KA09FD31','Nagesh','Parvathi',39,8,2,'Kumbugud','AC');
INSERT into bmtc_details values(13,'Pink','KA09FS32','Yashwanth','Sujith',32,2,2,'Bidadi','AC');
INSERT into bmtc_details values(14,'Goldenblue','KA09NF33','Kiran','Karthik',34,4,2,'MGRoad','Non-AC');
INSERT into bmtc_details values(15,'Marron','KA09FF34','Bharath','Sharath',36,6,2,'Electronic_city','Non-AC');
INSERT into bmtc_details values(16,'Pink','KA09FM35','Deepanjan','Mohan',32,7,2,'Hoskote','Non-AC');
INSERT into bmtc_details values(17,'Skyblue','KA09FD36','Mehek','Rajesh',30,8,2,'Kallasipalya','Electric');
INSERT into bmtc_details values(18,'Orange','KA09FB37','Michale','Vijay',27,6,2,'Kempegowda_Airport','Electric');
INSERT into bmtc_details values(19,'Green','KA09FH38','Prakash','Arjun',25,4,2,'Channasandra','Electric');
INSERT into bmtc_details values(20,'Purple','KA09FU39','Kokil','Dhananjay',28,6,2,'Shivajinagar','Electric');

select * from bmtc_details;
SELECT count(bus_color) as bus_Colour, bus_type from bmtc_details group by bus_type;
SELECT max(no_of_seats) as total_seats, bus_number_plate from bmtc_details group by bus_number_plate; 
SELECT min(no_of_womens_seats) as total_women_seats, bus_number_plate from bmtc_details group by bus_number_plate < 4;

SELECT avg (no_of_seats) as avg_seats, route_name from bmtc_details
group by route_name; 

/*Having*/
SELECT max(no_of_womens_seats) as womens_Seats, bus_type from bmtc_details
group by bus_type having womens_Seats > 4;

/*DISTINCT*/
SELECT DISTINCT(bus_color) from bmtc_details;

CREATE TABLE tourist_info (
tourist_id int,
tourist_name varchar(30),
phone_no bigint,
tourist_address varchar(30),
tourist_age int,
package_type varchar(20),
arrival_date date,
departure_date date,
email_id varchar(40),
cost int,
guide_name varchar(30),
guide_contact_no bigint(20)
);
select * from tourist_info;

INSERT INTO tourist_info VALUES (1, 'Chandra', 8431833297, 'Madduru', 21, 'Family_package', '2025-03-20', '2025-03-28', 'vchandraprabha903@gmail.com', 5000, 'Prabhakar', 7656765678);
INSERT INTO tourist_info VALUES (2, 'Prashanth', 7659989876, 'Mandya', 22, 'Couple_package', '2025-03-20', '2025-03-30', 'prashanth123@gmail.com', 8000, 'Sushanth', 6767544589);
INSERT INTO tourist_info VALUES (3, 'Priyanka', 7645344567, 'Mandya', 22, 'Family_package', '2025-03-20', '2025-03-30', 'priyanka123@gmail.com', 5000, 'Sumanth', 6767889980);
INSERT INTO tourist_info VALUES (4, 'Prathik', 79731897866, 'Kundapur', 25, 'Couple_package', '2025-03-28', '2025-04-01', 'prathik123@gmail.com', 8000, 'Sushanth', 6767544567);
INSERT INTO tourist_info VALUES (5, 'Shankar', 8978089876, 'Mysuru', 26, 'Friends_package', '2025-03-21', '2025-03-25', 'shankar123@gmail.com', 10000, 'Suma', 6363544589);
INSERT INTO tourist_info VALUES (6, 'Mohan', 6363998987, 'Bengaluru', 27, 'Friends_package', '2025-04-01', '2025-04-10', 'mohan123@gmail.com', 10000, 'Priya', 7856455467);
INSERT INTO tourist_info VALUES (7, 'Sachin', 7650089876, 'Bannuru', 29, 'Couple_package', '2025-03-10', '2025-03-14', 'sachin123@gmail.com', 8000, 'Mahantesh', 6767333589);
INSERT INTO tourist_info VALUES (8, 'Arvind', 9876543210, 'Hubli', 28, 'Solo_package', '2025-04-01', '2025-04-05', 'arvind123@gmail.com', 4000, 'Ravi', 9898989898);
INSERT INTO tourist_info VALUES (9, 'Suman', 9988776655, 'Chikmagalur', 24, 'Adventure_package', '2025-04-05', '2025-04-12', 'suman123@gmail.com', 9000, 'Nikhil', 9090909090);
INSERT INTO tourist_info VALUES (10, 'Prashanth', 7659989876, 'Mandya', 32, 'Couple_package', '2025-03-20', '2025-03-30', 'prashanth123@gmail.com', 8000, 'Sushanth', 6767544589);
INSERT INTO tourist_info VALUES (11, 'Ravindra', 9876454321, 'Tumkur', 30, 'Family_package', '2025-04-15', '2025-04-20', 'ravindra123@gmail.com', 9500, 'Sushil', 9765432109);
INSERT INTO tourist_info VALUES (12, 'Sreeja', 9667755443, 'Coorg', 27, 'Relaxation_package', '2025-05-01', '2025-05-07', 'sreeja123@gmail.com', 7000, 'Vikram', 9888776655);
INSERT INTO tourist_info VALUES (13, 'Rajesh', 9456123487, 'Madikeri', 29, 'Hiking_package', '2025-05-10', '2025-05-15', 'rajesh123@gmail.com', 8000, 'Manoj', 9776554433);
INSERT INTO tourist_info VALUES (14, 'Lavanya', 9162736455, 'Shivamogga', 23, 'Couple_package', '2025-06-01', '2025-06-07', 'lavanya123@gmail.com', 8500, 'Kiran', 9648292745);
INSERT INTO tourist_info VALUES (15, 'Nandini', 9746385123, 'Mandya', 24, 'Luxury_package', '2025-06-25', '2025-07-02', 'nandini123@gmail.com', 12000, 'Arvind', 9988776655);

SELECT count(package_type) AS package_count, tourist_address
FROM tourist_info 
GROUP BY tourist_address;

SELECT MAX(cost) AS max_cost, email_id
FROM tourist_info
GROUP BY email_id;

SELECT MIN(tourist_age) AS min_age, package_type
FROM tourist_info
GROUP BY package_type
HAVING min_age < 25;

SELECT AVG(cost) AS avg_cost, package_type
FROM tourist_info
GROUP BY package_type;

SELECT MAX(cost) AS max_cost, package_type
FROM tourist_info
GROUP BY package_type
HAVING max_cost > 7000;


SELECT DISTINCT(email_id)
FROM tourist_info;

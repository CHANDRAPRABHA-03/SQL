CREATE DATABASE Hostel;
USE Hostel;
CREATE TABLE hostel_info(
    hostel_id int,
    hostel_name varchar(30),
	location varchar(40),
	available_rooms int, 
	room_price int,
    facilities varchar(45)
    );
    Desc hostel_info;

SELECT * FROM hostel_info;

CREATE TABLE restaurants_info(
    restaurants_id int,
    restaurant_name varchar(30),
    location varchar(40),
    food_type varchar(20),
    average_price DECIMAL(10, 2),
    opening_hours VARCHAR(100)
    );
    Desc restaurants_info;
SELECT * FROM restaurants_info;


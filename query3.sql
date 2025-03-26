CREATE DATABASE 20_march;
USE 20_march;
CREATE TABLE hospital_info(
      hospital_id int,
      hospital_name varchar(20),
      contact_no long,
      city varchar(20),
      state varchar(15),
      staff_names varchar(16)
      );
DESC hospital_info;

ALTER TABLE hospital_info
CHANGE COLUMN staff_names staff_members int; 

SELECT * FROM hospital_info;

INSERT INTO hospital_info values(1,"Manipal_Hospital",9765432123,"Mysuru","Karnataka",800);
INSERT INTO hospital_info values(2,"Fortis_Hospital",8765456789,"Bengaluru","Karnataka",1000);
INSERT INTO hospital_info values(3,"Jyothi_Hospital",9765970987,"Chennai","Tamilnadu",900);
INSERT INTO hospital_info VALUES (4, "Apollo_Hospital", 9845123456, "Hyderabad", "Telangana", 1200);
INSERT INTO hospital_info VALUES (5, "AIIMS", 9876543210, "New Delhi", "Delhi", 1500);
INSERT INTO hospital_info VALUES (6, "Rainbow_Hospital", 9900990099, "Pune", "Maharashtra", 700);
INSERT INTO hospital_info VALUES (7, "KIMS_Hospital", 9123456789, "Trivandrum", "Kerala", 950);
INSERT INTO hospital_info VALUES (8, "Narayana_Hrudayalaya", 9345678901, "Bangalore", "Karnataka", 1100);
INSERT INTO hospital_info VALUES (9, "Max_Hospital", 9234567890, "Gurugram", "Haryana", 1300);
INSERT INTO hospital_info VALUES (10, "CMC_Hospital", 9654321098, "Vellore", "Tamil Nadu", 850);
INSERT INTO hospital_info VALUES (11, "Medanta", 9786754321, "Lucknow", "Uttar Pradesh", 1250);
INSERT INTO hospital_info VALUES (12, "Sankara_Nethralaya", 9907654321, "Chennai", "Tamil Nadu", 600);
INSERT INTO hospital_info VALUES (13, "Care_Hospital", 9123678541, "Visakhapatnam", "Andhra Pradesh", 700);
INSERT INTO hospital_info VALUES (14, "KrishnaH_ospital", 9012345678, "Mumbai", "Maharashtra", 1400);
INSERT INTO hospital_info VALUES (15, "PGIMER", 9087654321, "Chandigarh", "Punjab", 1350);
SELECT * FROM hospital_info;


DELETE from hospital_info where hospital_id = 1;
DELETE from hospital_info where hospital_id in(2,5,6);
DELETE from hospital_info where hospital_id not in (8,9,4,11,12,14,15);
DELETE from hospital_info where hospital_id = 4 and hospital_name = 'Apollo_hospital';
UPDATE hospital_info set hospital_name = 'Bhargav_nursinghome' where hospital_id = 5;
SELECT * FROM hospital_info where hospital_name like '%N'
SELECT * FROM hospital_info where hospital_name like 'N%'
SELECT * FROM hospital_info where hospital_name like '%M%a'

CREATE TABLE state_info(
state_id int,
state_name varchar(25),
state_cm varchar(30),
population bigint,
famous_for varchar(20),
state_capital varchar(30)
);

INSERT INTO state_info VALUES (1, 'Karnataka', 'Siddaramaiah', 67800000, 'Mysore Dasara', 'Bengaluru');
INSERT INTO state_info VALUES (2, 'Tamil Nadu', 'MKStalin', 75695000, 'Rameshwaram', 'Chennai');
INSERT INTO state_info VALUES (3, 'AndhraPradesh', 'NChandrababuNaidu', 49577103, 'TirupatiBalajiTemple', 'Amaravati');
INSERT INTO state_info VALUES (4, 'Maharashtra', 'EknathShinde', 124904000, 'AjantaElloraCaves', 'Mumbai');
INSERT INTO state_info VALUES (5, 'West Bengal', 'MamataBanerjee', 100580000, 'DurgaPuja', 'Kolkata');
INSERT INTO state_info VALUES (6, 'UttarPradesh', 'YogiAdityanath', 241066000, 'KashiVishwanathTmple','Lucknow');
INSERT INTO state_info VALUES (7, 'Rajasthan', 'BhajanLalSharma', 80590000, 'TharDesert', 'Jaipur');
INSERT INTO state_info VALUES (8, 'Gujarat', 'BhupendrabhaiPatel', 71600000, 'StatueofUnity', 'Gandhinagar');
INSERT INTO state_info VALUES (9, 'MadhyaPradesh', 'MohanYadav', 87269000, 'KhajurahoTemples', 'Bhopal');
INSERT INTO state_info VALUES (10, 'Bihar', 'NitishKumar', 130363000, 'MahabodhiTemple', 'Patna');
INSERT INTO state_info VALUES (11, 'Odisha', 'NaveenPatnaik', 46356334, 'JagannathTemple', 'Bhubaneswar');
INSERT INTO state_info VALUES (12, 'Punjab', 'BhagwantMann', 30555000, 'GoldenTemple', 'Chandigarh');
INSERT INTO state_info VALUES (13, 'Kerala', 'PinarayiVijayan', 35699443, 'BackwatersofAlleppey', 'Thiruvananthapuram');
INSERT INTO state_info VALUES (14, 'Haryana', 'ManoharLalKhattar', 29988366, 'Milkproduction', 'Chandigarh');
INSERT INTO state_info VALUES (15, 'Assam', 'HimantaBiswaSarma', 35607039, 'Teaandsilk', 'Dispur');

SELECT * FROM state_info;
UPDATE state_info set famous_for = 'Pongal' where state_id = 2 and state_capital = 'Chennai';

CREATE TABLE Scam_info(
    scam_id int,
    scam_name varchar(100),
    scam_type varchar(50),
    location varchar(100),
    scam_year int,
    amount_lost bigint
);
SELECT * FROM Scam_info;
INSERT INTO scam_info VALUES (1, 'Nirav Modi PNB Scam', 'Bank Fraud', 'Mumbai', 2018, 114000000000);
INSERT INTO scam_info VALUES (2, 'Harshad Mehta Scam', 'Stock Market Fraud', 'Mumbai', 1992, 5000000000);
INSERT INTO scam_info VALUES (3, 'Satyam Scam', 'Corporate Fraud', 'Hyderabad', 2009, 14000000000);
INSERT INTO scam_info VALUES (4, 'Saradha Chit Fund Scam', 'Ponzi Scheme', 'West Bengal', 2013, 2400000000);
INSERT INTO scam_info VALUES (5, 'Commonwealth Games Scam', 'Corruption', 'New Delhi', 2010, 7000000000);
INSERT INTO scam_info VALUES (6, 'Telgi Fake Stamp Paper Scam', 'Counterfeit', 'Maharashtra', 2003, 20000000000);
INSERT INTO scam_info VALUES (7, 'Vyapam Scam', 'Education Fraud', 'Madhya Pradesh', 2013, 3700000000);
INSERT INTO scam_info VALUES (8, '2G Spectrum Scam', 'Telecom Fraud', 'New Delhi', 2008, 176000000000);
INSERT INTO scam_info VALUES (9, 'Coal Allocation Scam', 'Corruption', 'Multiple States', 2012, 186000000000);
INSERT INTO scam_info VALUES (10, 'Fodder Scam', 'Corruption', 'Bihar', 1996, 950000000);
INSERT INTO scam_info VALUES (11, 'Bank of Baroda Forex Scam', 'Bank Fraud', 'New Delhi', 2015, 6000000000);
INSERT INTO scam_info VALUES (12, 'AgustaWestland Scam', 'Defense Fraud', 'Italy/India', 2013, 3600000000);
INSERT INTO scam_info VALUES (13, 'Adarsh Housing Scam', 'Real Estate Fraud', 'Mumbai', 2010, 185000000);
INSERT INTO scam_info VALUES (14, 'Punjab Land Scam', 'Land Fraud', 'Punjab', 2016, 4000000000);
INSERT INTO scam_info VALUES (15, 'Bitcoin Scam', 'Cyber Fraud', 'Bengaluru', 2020, 2000000000);

SELECT * FROM Hospital_info  where state = 'Maharashtra' and 
city = 'Mumbai';
SELECT * FROM Scam_info where scam_id in(3,4,5,6); 
SELECT * FROM Scam_info where scam_id not in(8,9,10,11);


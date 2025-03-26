CREATE DATABASE 25_March;  
USE 25_March;
CREATE TABLE Cricket_info (
    match_id INT ,
    match_date DATE,
    opponent_team VARCHAR(50),
    venue VARCHAR(50),
    rcb_score INT,
    opponent_score INT,
    result VARCHAR(20),
    top_scorer VARCHAR(50),
    top_wicket_taker VARCHAR(50),
    man_of_the_match VARCHAR(50)
);
INSERT INTO Cricket_info VALUES
(1, '2025-03-22', 'KKR', 'Eden Gardens', 175, 174, 'Won', 'Virat Kohli', 'Josh Hazlewood', 'Virat Kohli'),
(2, '2025-03-28', 'CSK', 'Chidambaram Stadium', 200, 180, 'Won', 'Faf du Plessis', 'Mohammed Siraj', 'Faf du Plessis'),
(3, '2025-04-03', 'MI', 'Wankhede Stadium', 160, 165, 'Lost', 'Glenn Maxwell', 'Karn Sharma', 'Rohit Sharma'),
(4, '2025-04-07', 'DC', 'Chinnaswamy Stadium', 185, 170, 'Won', 'Virat Kohli', 'Harshal Patel', 'Virat Kohli'),
(5, '2025-04-12', 'RR', 'Sawai Mansingh Stadium', 190, 192, 'Lost', 'Dinesh Karthik', 'Yuzvendra Chahal', 'Sanju Samson'),
(6, '2025-04-18', 'SRH', 'Rajiv Gandhi Stadium', 210, 190, 'Won', 'Faf du Plessis', 'Josh Hazlewood', 'Faf du Plessis'),
(7, '2025-04-22', 'PBKS', 'Mohali', 150, 155, 'Lost', 'Mahipal Lomror', 'Reece Topley', 'Shikhar Dhawan'),
(8, '2025-04-26', 'GT', 'Narendra Modi Stadium', 170, 165, 'Won', 'Glenn Maxwell', 'Mohammed Siraj', 'Glenn Maxwell'),
(9, '2025-05-01', 'LSG', 'Ekana Stadium', 195, 170, 'Won', 'Virat Kohli', 'Harshal Patel', 'Virat Kohli'),
(10, '2025-05-06', 'KKR', 'Chinnaswamy Stadium', 180, 185, 'Lost', 'Faf du Plessis', 'Mohammed Siraj', 'Shreyas Iyer'),
(11, '2025-05-10', 'CSK', 'Chinnaswamy Stadium', 220, 200, 'Won', 'Glenn Maxwell', 'Josh Hazlewood', 'Glenn Maxwell'),
(12, '2025-05-15', 'MI', 'Chinnaswamy Stadium', 165, 168, 'Lost', 'Virat Kohli', 'Reece Topley', 'Suryakumar Yadav'),
(13, '2025-05-20', 'DC', 'Arun Jaitley Stadium', 180, 190, 'Lost', 'Faf du Plessis', 'Harshal Patel', 'David Warner'),
(14, '2025-05-25', 'RR', 'Chinnaswamy Stadium', 200, 185, 'Won', 'Dinesh Karthik', 'Yuzvendra Chahal', 'Dinesh Karthik'),
(15, '2025-05-30', 'GT', 'Chinnaswamy Stadium', 175, 172, 'Won', 'Virat Kohli', 'Mohammed Siraj', 'Virat Kohli');
Select * from Cricket_info;

ALTER TABLE Cricket_info 
ADD COLUMN match_duration_minutes INT,
ADD COLUMN umpire_name VARCHAR(50);

ALTER TABLE Cricket_info 
RENAME COLUMN match_id TO game_id,
RENAME COLUMN match_date TO game_date,
RENAME COLUMN opponent_team TO opposite_team,
RENAME COLUMN venue TO match_venue;

ALTER TABLE Cricket_info 
MODIFY COLUMN rcb_score SMALLINT,
MODIFY COLUMN opponent_score SMALLINT,
MODIFY COLUMN match_duration_minutes BIGINT;

UPDATE Cricket_info 
SET result = 'Won' 
WHERE opposite_team = 'KKR' AND rcb_score = 170;

UPDATE Cricket_info
SET result = 'Lost' 
WHERE opposite_team = 'CSK' AND rcb_score =180;

UPDATE Cricket_info 
SET result = 'Won' 
WHERE opposite_team = 'SRH' OR opposite_team = 'PBKS';

UPDATE Cricket_info
SET top_scorer = 'Glenn Maxwell' 
WHERE opposite_team IN ('GT', 'MI', 'RR');

UPDATE Cricket_info
SET top_wicket_taker = 'Harshal Patel' 
WHERE opposite_team NOT IN ('LSG', 'DC');

DELETE FROM Cricket_info 
WHERE opposite_team = 'PBKS';

DELETE FROM Cricket_info 
WHERE game_date BETWEEN '2025-04-01' AND '2025-04-10';

DELETE FROM Cricket_info 
WHERE result = 'Lost' AND opponent_score = 190;

SELECT * FROM Cricket_info 
WHERE top_scorer = 'Virat Kohli';

SELECT * FROM Cricket_info 
WHERE result = 'Won' AND rcb_score = 170;

SELECT * FROM Cricket_info 
WHERE top_wicket_taker = 'Harshal Patel' OR man_of_the_match = 'Faf du Plessis';

SELECT * FROM Cricket_info 
WHERE opposite_team IN ('MI', 'CSK', 'GT');

SELECT * FROM Cricket_info 
WHERE opposite_team NOT IN ('RR', 'SRH');

SELECT * FROM Cricket_info 
WHERE rcb_score BETWEEN 150 AND 200;
SELECT * FROM Cricket_info 
WHERE opponent_score NOT BETWEEN 160 AND 190;

SELECT * FROM Cricket_info 
WHERE opposite_team LIKE 'C%';        
SELECT * FROM Cricket_info 
WHERE opposite_team NOT LIKE 'G%'; 



CREATE TABLE Football_info (
    Player_ID INT ,
    player_name VARCHAR(50),
    player_age INT,
    player_position VARCHAR(30),
    Club VARCHAR(50),
    Matches_Played INT,
    player_height INT,
    player_state VARCHAR(30),
    Total_matches INT,
    Total_goals INT
);

INSERT INTO Football_info VALUES
(1, 'SunilChhetri', 39, 'Forward', 'Bengaluru_FC', 140, 170, 'Karnataka', 140, 84),
(2, 'GurpreetSinghSandhu', 32, 'Goalkeeper', 'Bengaluru_FC', 120, 190, 'Karnataka', 120, 0),
(3, 'RobinYadav', 24, 'Defender', 'Bengaluru_FC', 90, 175, 'Karnataka', 90, 5),
(4, 'LeonAugustine', 25, 'Winger', 'Bengaluru_FC', 75, 172, 'Karnataka', 75, 9),
(5, 'ShankarSampingiraj', 28, 'Midfielder', 'FC_Bengaluru_United', 80, 180, 'Karnataka', 80, 6),
(6, 'PrashanthK', 26, 'Midfielder', 'Bengaluru_FC', 85, 178, 'Karnataka', 85, 3),
(7, 'RinoAnto', 35, 'Defender', 'Kerala_Blasters', 100, 176, 'Karnataka', 100, 1),
(8, 'NishuKumar', 27, 'Defender', 'East_Bengal', 95, 177, 'Karnataka', 95, 2),
(9, 'HarmanjotKhabra', 36, 'Midfielder', 'Kerala_Blasters', 110, 179, 'Karnataka', 110, 5),
(10, 'LalthuammawiaRalte', 31, 'Goalkeeper', 'Odisha_FC', 85, 185, 'Karnataka', 85, 0),
(11, 'EdmundLalrindika', 26, 'Forward', 'FC_Bengaluru_United', 78, 174, 'Karnataka', 78, 10),
(12, 'SairuatKima', 27, 'Defender', 'Bengaluru_FC', 70, 175, 'Karnataka', 70, 4),
(13, 'AjayChhetri', 24, 'Midfielder', 'Bengaluru_FC', 60, 172, 'Karnataka', 60, 3),
(14, 'AltamashSayed', 26, 'Midfielder', 'Bengaluru_FC', 65, 176, 'Karnataka', 65, 2),
(15, 'CletusPaul', 22, 'Forward', 'FC_Bengaluru_United', 55, 173, 'Karnataka', 55, 7);

ALTER TABLE Football_info ADD Yellow_Cards INT;
ALTER TABLE Football_info ADD Red_Cards INT;
ALTER TABLE Football_info RENAME COLUMN Matches_Played TO Match_Count;
ALTER TABLE Football_info RENAME COLUMN Total_goals TO Goals_Scored;
ALTER TABLE Football_info RENAME COLUMN player_state TO State;
ALTER TABLE Football_info RENAME COLUMN player_position TO Position;
UPDATE Football_info SET Club = 'FC_Bengaluru_United' WHERE Player_ID = 5 AND player_age > 25;
UPDATE Football_info SET Goals_Scored = 15 WHERE player_name = 'Leon_Augustine' OR player_name = 'Cletus_Paul';
UPDATE Football_info SET Match_Count = 95 WHERE Player_ID IN (3, 9, 11);
UPDATE Football_info SET Yellow_Cards = 0 WHERE Club NOT IN ('Bengaluru_FC', 'Kerala_Blasters');
UPDATE Football_info SET State = 'Karnataka' WHERE player_name = 'SunilChhetri';
DELETE FROM Football_info WHERE Player_ID IN (7,10, 12, 15);
SELECT * FROM Football_info WHERE player_age = 30;
SELECT * FROM Football_info WHERE Club = 'Bengaluru_FC' AND Position = 'Forward';
SELECT * FROM Football_info WHERE Goals_Scored =5 OR Total_matches =5;
SELECT * FROM Football_info WHERE player_name IN ('SunilChhetri', 'GurpreetSinghSandhu');
SELECT * FROM Football_info WHERE Club NOT IN ('FC_Goa', 'Odisha_FC');
SELECT * FROM Football_info WHERE player_age BETWEEN 25 AND 30;
SELECT * FROM Football_info WHERE player_age NOT BETWEEN 25 AND 30;
SELECT * FROM Football_info WHERE player_name LIKE 'S%';
SELECT * FROM Football_info WHERE player_name NOT LIKE 'A%';

select * from cricket_info;
SELECT match_venue ,INSTR (match_venue, 'E') from cricket_info; /*instring*/
SELECT match_venue, substr(match_venue, 2,5) from cricket_info; /*substr*/
SELECT top_scorer,length(top_scorer) from cricket_info;  /*length*/
select match_venue, upper(match_venue) as match_venue from cricket_info; /* upper case*/
SELECT opposite_team, lower(opposite_team) from cricket_info; /* lower case*/
SELECT concat(game_id,match_venue,rcb_score,result) from cricket_info; /* Concat*/
SELECT count(opponent_score)  from Cricket_info; /* count*/
SELECT sum(rcb_score) from Cricket_info; /* sum*/
Select max(opponent_score) from cricket_info; /*max*/
SELECT min(opponent_score) from cricket_info; /*min*/
SELECT avg(opponent_score) from cricket_info; /*avg*/
DROP TABLE IF EXISTS nomnom;

CREATE TABLE nomnom (
 NAME TEXT,
 NEIGHBOURHOOD TEXT,
 CUISINE TEXT,
 REVIEW REAL,
 PRICE TEXT,
 HEALTH TEXT
);

INSERT INTO nomnom (NAME, NEIGHBOURHOOD, CUISINE, REVIEW, PRICE , HEALTH) VALUES
 ('The Green Spoon', 'brooklyn', 'vegan', 4.2, '$$', 'A'),
 ('Fire & Rice', 'Midtown', 'thai', 3.7, '$$', 'B'),
 ('Slice House', 'downtown', 'pizza', 4.5, '$$', 'A'),
 ('Dragon Pearl', 'Queens', 'chinese', 3.8, '$$', 'A'),
 ('The Rusty Fork', 'Chinatown', 'american', 4.0, '$$$', 'B'),
 ('Taco Valley', 'Uptown', 'mexican', 4.6, '$$$', 'A'),
 ('Ocean Grill', 'brooklyn', 'seafood', 3.9, '$$$$', 'A'),
 ('Pasta Nova', 'Midtown', 'italian', 4.8, '$$$$', 'A'),
 ('Burger Haven', 'Queens', 'american', 3.6, '$', 'C');

SELECT *FROM nomnom;

SELECT DISTINCT NEIGHBOURHOOD FROM nomnom;

SELECT DISTINCT CUISINE FROM nomnom;

SELECT * FROM nomnom WHERE CUISINE = 'chinese';

SELECT * FROM nomnom WHERE REVIEW >= 4;

SELECT * FROM nomnom WHERE CUISINE = 'italian' AND PRICE = '$$$';

SELECT * FROM nomnom WHERE NAME LIKE '%GRILL%';

SELECT * FROM nomnom
WHERE NEIGHBOURHOOD IN ( 'Midtown', 'Downtown', 'Chinatown');

SELECT * FROM nomnom ORDER BY REVIEW DESC LIMIT 4;
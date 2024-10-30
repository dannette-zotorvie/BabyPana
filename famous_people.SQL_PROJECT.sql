-- Create a database --
CREATE DATABASE famous_people;

USE famous_people;

-- Create famous table --
CREATE TABLE famous (id INTEGER PRIMARY KEY, first_name TEXT, surname TEXT, age INTEGER, occupation TEXT, hobby TEXT);

# Entering records into famous table #
INSERT INTO famous VALUES (1, 'Meryl', 'Streep', 74, 'Actress', 'Cooking');
INSERT INTO famous VALUES (2, 'Denzel', 'Washington', 68, 'Actor', 'Basketball');
INSERT INTO famous VALUES (3, 'Leonardo', 'DiCaprio', 49, 'Actor', 'Environmentalism');
INSERT INTO famous VALUES (4, 'Beyoncé', 'Knowles-Carter', 43, 'Singer', 'Dancing');
INSERT INTO famous VALUES (5, 'Taylor', 'Swift', 34, 'Singer', 'Baking');
INSERT INTO famous VALUES (6, 'Michael', 'Jordan', 60, 'Athlete', 'Golf');
INSERT INTO famous VALUES (7, 'Serena', 'Williams', 42, 'Athlete', 'Fashion');
INSERT INTO famous VALUES (8, 'J.K.', 'Rowling', 58, 'Author', 'Writing');
INSERT INTO famous VALUES (9, 'Mark', 'Twain', 189,'Author', 'Travel');
INSERT INTO famous VALUES (10, 'Albert', 'Einstein', 76, 'Scientist', 'Playing the violin');
INSERT INTO famous VALUES (11, 'Marie', 'Curie', 66, 'Scientist', 'Reading');
INSERT INTO famous VALUES (12, 'Oprah', 'Winfrey', 70, 'Entrepreneur', 'Philanthropy');
INSERT INTO famous VALUES (13, 'Frida', 'Kahlo', 47, 'Artist', 'Painting');
INSERT INTO famous VALUES (14, 'Pablo', 'Picasso', 91, 'Artist', 'Sculpting');
INSERT INTO famous VALUES (15, 'Barack', 'Obama', 63, 'Politician', 'Basketball');
INSERT INTO famous VALUES (16, 'Angela', 'Merkel', 70, 'Politician', 'Hiking');
INSERT INTO famous VALUES (17, 'Usain', 'Bolt', 37, 'Athlete', 'Music');
INSERT INTO famous VALUES (18, 'Nelson', 'Mandela', 95, 'Activist', 'Reading');
INSERT INTO famous VALUES (19, 'Stephen', 'Hawking', 76, 'Scientist', 'Theoretical Physics');
INSERT INTO famous VALUES (20, 'Jane', 'Goodall', 90, 'Primatologist', 'Nature Conservation');

-- View table  --
SELECT * FROM famous;

-- Create person table --
CREATE TABLE person ( id INTEGER, gender TEXT, race Text, status TEXT); 

# Entering records into table...
INSERT INTO person VALUES (1, 'F', 'Caucasian', 'Married');
INSERT INTO person VALUES (2,'M', 'African American', 'Single');
INSERT INTO  person VALUES (3,'M', 'Caucasian', 'Single');
INSERT INTO  person VALUES (4, 'F', 'African American', 'Married');
INSERT INTO  person VALUES (5, 'F', 'Caucasian', 'Single');
INSERT INTO  person VALUES (6, 'M', 'African American', 'Married');
INSERT INTO  person VALUES (7,'F', 'African American', 'Married');
INSERT INTO  person VALUES (8,'F', 'Caucasian', 'Single');
INSERT INTO  person VALUES (9,'M', 'Caucasian', 'single');
INSERT INTO  person VALUES (10,'M', 'Caucasian', 'Married');
INSERT INTO  person VALUES (11,'F', 'Polish','Married');
INSERT INTO  person VALUES (12,'F', 'African American', 'Single');
INSERT INTO  person VALUES (13, 'F', 'Mexican', 'Single');
INSERT INTO  person VALUES (14,'M', 'Spanish', 'Married');
INSERT INTO  person VALUES (19,'M', 'African American', 'Married');
INSERT INTO  person VALUES (120,'F', 'Caucasian', 'Single');
INSERT INTO  person VALUES (21,'M', 'Jamaican', 'Single');
INSERT INTO  person VALUES (22, 'M', 'African', 'Married');
INSERT INTO  person VALUES (23,'M', 'Caucasian', 'Single');
INSERT INTO  person VALUES (24,'F', 'Caucasian', 'Single'); 

-- View person table --
SELECT * FROM person;


-- Create occupation table ...
CREATE TABLE occupation (id INTEGER PRIMARY KEY, person_id INTEGER, profession TEXT, location TEXT, category TEXT);

/* Enter records into table */
INSERT INTO occupation VALUES  (1, 1, 'Actress', 'USA', 'Employed');
INSERT INTO occupation VALUES (2, 2, 'Actor', 'USA', 'Employed');
INSERT INTO occupation VALUES (3, 3,'Producer', 'USA', 'Self-Employed');
INSERT INTO occupation VALUES (4, 4,'Singer', 'USA', 'Self-Employed');
INSERT INTO occupation VALUES (5,5,'Singer', 'USA', 'Self-Employed');
INSERT INTO occupation VALUES (6,6,'Basketball Player', 'USA', 'Self-Employed');
INSERT INTO occupation VALUES (7,8,'Author', 'UK', 'Self-Employed');
INSERT INTO occupation VALUES (8, 9, 'Humorist', 'USA', 'Deceased');
INSERT INTO occupation VALUES (9, 10, 'Theoretical Physicist', 'Switzerland', 'Deceased');
INSERT INTO occupation VALUES (10, 11,'Physicist', 'France', 'Deceased');
INSERT INTO occupation VALUES (11, 12,'Media Executive', 'USA', 'Self-Employed');
INSERT INTO occupation VALUES (12,13, 'Artist', 'Mexico', 'Deceased');
INSERT INTO occupation VALUES (13, 14, 'Artist', 'Spain', 'Deceased');
INSERT INTO occupation VALUES (14,15, '44th President of the United States', 'USA', 'Formerly Employed');
INSERT INTO occupation VALUES (15, 16, 'Former Chancellor of Germany', 'Germany', 'Formerly Employed');
INSERT INTO occupation VALUES (16,17, 'Former Professional Sprinter', 'Jamaica', 'Self-Employed');
INSERT INTO occupation VALUES (17,18, 'Politician', 'South Africa', 'Deceased');
INSERT INTO occupation VALUES (18, 19, 'Cosmologist', 'UK', 'Deceased');
INSERT INTO occupation VALUES (19, 20, 'Primatologist', 'UK', 'Self-Employed');


-- View occupation table --
SELECT * FROM occupation;

# View all tables #
SELECT * FROM famous;
SELECT * FROM person;
SELECT * FROM occupation;

-- List names of famous persons that are formerly employed with their occupation and location --
SELECT f.first_name, f.surname, o.profession, o.location, o.category
FROM famous AS f
JOIN occupation AS o
ON f.id = o.person_id
WHERE category = 'Formerly Employed';


-- famous persons with no occupation listed --
SELECT f.first_name, f.surname, o.category
FROM famous AS f
LEFT JOIN occupation AS o
ON f.id = o.person_id
WHERE category IS NULL;

-- List occupation for married famous persons --
SELECT f.first_name, f.surname, p.status, f.occupation 
FROM famous AS f
jOIN person AS p
ON f.id = p.id
WHERE status = 'Married';


# identify famous persons that are self employed, location and their respective hobby #
SELECT f.first_name, f.surname, o.category, o.location, f.hobby
FROM famous AS f
INNER JOIN occupation AS o
ON f.id = o.person_id
WHERE category = 'Self-Employed';

-- list famous person above 50 years  --
SELECT first_name, surname, age
FROM famous
WHERE age >= 50 
ORDER BY age DESC;


/* list person with age above the average age of all famous persons */ 
SELECT first_name, surname, age
FROM famous
WHERE age > 
      (SELECT ROUND(AVG(age), 2) AS avg_age FROM famous)
ORDER BY age DESC;


-- find person race, gender, occupation, location --
SELECT f.first_name,f.surname, p.race, p.gender,o.profession, o.location
FROM famous AS f
JOIN person AS p
ON f.id = p.id
JOIN occupation AS O
ON f.id = o.person_id;

-- Count persons with 'Actor' occupation and group by location --
SELECT COUNT(f.id), o.profession, o.location
FROM famous AS f
JOIN occupation AS o
ON f.id = o.person_id
WHERE profession = 'Actor'
GROUP BY location;

# Categorize hobby of famous persons #
SELECT surname, hobby,
CASE 
    WHEN hobby IN ('Reading','Writing') THEN 'Literary'
    WHEN hobby IN ('Basketball', 'Hiking', 'Golf') THEN 'Athletic'
    WHEN hobby IN ('Music', 'Painting', 'Sculpting') THEN 'Artist'
    ELSE 'other' END AS hobby_category
FROM famous;
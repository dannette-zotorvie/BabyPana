-- Creating Database for App 
CREATE DATABASE App;
USE App;

-- Creating tables for Instagram 
CREATE TABLE Users (
    User_ID INTEGER PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(255) NOT NULL,
    gender TEXT NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    Password VARCHAR(255) NOT NULL
);

-- Inserting values into Users Tables 
INSERT INTO Users (Username, gender, Email, Password) VALUES ("michael_osafo", "male", "mike234@gmail.com", "password123");
INSERT INTO Users (Username, gender, Email, Password) VALUES ("jade_odonkor", "female", "jade@aol.com", "password456");
INSERT INTO Users (Username, gender, Email, Password) VALUES ("dannette_zot", "female","dzot@hotmail.com", "password789");
INSERT INTO Users (Username, gender, Email, Password) VALUES ("kwame_boateng", "male", "kboateng@yahoo.com", "password1011");
INSERT INTO Users (Username, gender, Email, Password) VALUES ("ama_sarpomaa", "female", "ama_sarpong@gmail.com", "password1213");
INSERT INTO Users (Username, gender, Email, Password) VALUES ("ebenezer_yeboah", "male", "eyeboah@outlook.com", "password1415");
INSERT INTO Users (Username, gender, Email, Password) VALUES ("nana_adjei", "male", "nadjei@live.com", "password1617");
INSERT INTO Users (Username, gender, Email, Password) VALUES ("samuel_takyi", "male", "stakyi@gmail.com", "password1819");
INSERT INTO Users (Username, gender, Email, Password) VALUES ("emmanuel_owusu", "male", "eowusu@yahoo.com", "password2021");
INSERT INTO Users (Username, gender, Email, Password) VALUES ("rebecca_akyaa","male", "rakyaa@hotmail.com", "password2223");

-- Creating tables for Posts 
CREATE TABLE Posts (
    post_ID INTEGER PRIMARY KEY AUTO_INCREMENT,
    user_ID INTEGER,
    likes INTEGER DEFAULT 0,
    post_month TEXT);

-- Inserting values into Posts 
INSERT INTO Posts (user_ID, likes, post_month) VALUES (1, 120, 'January');
INSERT INTO Posts (user_ID, likes, post_month) VALUES (3, 65, 'January');
INSERT INTO Posts (user_ID, likes, post_month) VALUES (4, 85, 'January');
INSERT INTO Posts (user_ID, likes, post_month) VALUES (2, 75, 'February');
INSERT INTO Posts (user_ID, likes, post_month) VALUES (5, 130, 'February');
INSERT INTO Posts (user_ID, likes, post_month) VALUES (6, 45, 'March');
INSERT INTO Posts (user_ID, likes, post_month) VALUES (7, 90, 'March');
INSERT INTO Posts (user_ID, likes, post_month) VALUES (9, 100, 'March');
INSERT INTO Posts (user_ID, likes, post_month) VALUES (1, 95, 'April');
INSERT INTO Posts (user_ID, likes, post_month) VALUES (10, 80, 'April');
INSERT INTO Posts (user_ID, likes, post_month) VALUES (3, 70, 'April');
INSERT INTO Posts (user_ID, likes, post_month) VALUES (5, 60, 'May');
INSERT INTO Posts (user_ID, likes, post_month) VALUES (7, 120, 'May');
INSERT INTO Posts (user_ID, likes, post_month) VALUES (6, 135, 'June');
INSERT INTO Posts (user_ID, likes, post_month) VALUES (8, 80, 'June');
INSERT INTO Posts (user_ID, likes, post_month) VALUES (9, 140, 'June');
INSERT INTO Posts (user_ID, likes, post_month) VALUES (2, 110, 'June');
INSERT INTO Posts (user_ID, likes, post_month) VALUES (4, 50, 'July');
INSERT INTO Posts (user_ID, likes, post_month) VALUES (10, 55, 'July');
INSERT INTO Posts (user_ID, likes, post_month) VALUES (1, 125, 'August');
INSERT INTO Posts (user_ID, likes, post_month) VALUES (3, 115, 'August');
INSERT INTO Posts (user_ID, likes, post_month) VALUES (7, 130, 'August');
INSERT INTO Posts (user_ID, likes, post_month) VALUES (5, 60, 'September');
INSERT INTO Posts (user_ID, likes, post_month) VALUES (8, 75, 'September');
INSERT INTO Posts (user_ID, likes, post_month) VALUES (9, 85, 'September');
INSERT INTO Posts (user_ID, likes, post_month) VALUES (2, 65, 'October');
INSERT INTO Posts (user_ID, likes, post_month) VALUES (6, 95, 'October');
INSERT INTO Posts (user_ID, likes, post_month) VALUES (1, 90, 'November');
INSERT INTO Posts (user_ID, likes, post_month) VALUES (8, 130, 'November');
INSERT INTO Posts (user_ID, likes, post_month) VALUES (10, 115, 'November');
INSERT INTO Posts (user_ID, likes, post_month) VALUES (4, 70, 'November');
INSERT INTO Posts (user_ID, likes, post_month) VALUES (2, 85, 'December');
INSERT INTO Posts (user_ID, likes, post_month) VALUES (5, 110, 'December');
INSERT INTO Posts (user_ID, likes, post_month) VALUES (6, 100, 'December');
INSERT INTO Posts (user_ID, likes, post_month) VALUES (9, 75, 'December');
INSERT INTO Posts (user_ID, likes, post_month) VALUES (7, 90, 'December');
INSERT INTO Posts (user_ID, likes, post_month) VALUES (3, 120, 'December');

-- Viewing users and posts tables 
SELECT * FROM users;
SELECT * FROM posts;


# Joining users to posts table 
SELECT users.user_id AS id, users.username, users.gender, users.email, posts.post_id, posts.likes, posts.post_month
FROM users
INNER JOIN posts 
ON Users.User_id = posts.User_ID;

-- Viewing posts table 
SELECT * FROM posts;

# Edit user profile picture
UPDATE Users
SET email = ("dot@gmail.com")
WHERE User_ID = 3;


-- View users table 
SELECT * FROM users;


# Delete post
DELETE FROM Posts
WHERE Post_ID = 2;

-- View posts table 
SELECT * FROM posts;



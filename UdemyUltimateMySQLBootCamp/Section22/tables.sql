USE udemy_ultimate_mysql_bootcamp;
SELECT * FROM cats;
DESC cats;
CREATE TABLE tweets(
    id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(15) DEFAULT 'No name' NOT NULL,
    content VARCHAR(140) DEFAULT 'No content' NOT NULL,
    favorites INT DEFAULT 0 NOT NULL
);
DROP TABLE tweets;
CREATE TABLE legacy_cats(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) DEFAULT  'No name' NOT NULL,
    breed VARCHAR(100) DEFAULT 'No breed' NOT NULL,
    age INT DEFAULT 0 NOT NULL
);
SHOW COLUMNS FROM legacy_cats;
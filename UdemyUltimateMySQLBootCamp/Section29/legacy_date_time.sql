SHOW TABLES;
CREATE TABLE more_people(
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(100) DEFAULT 'no first name' NOT NULL,
    last_name VARCHAR(100) DEFAULT 'no last name' NOT NULL,
    age TINYINT UNSIGNED DEFAULT 0 NOT NULL,
    birth_date_time DATETIME DEFAULT '19-01-01 00:00:00' NOT NULL
);
ALTER TABLE more_people DROP COLUMN birth_date;
ALTER TABLE more_people DROP COLUMN birth_time;
DESC more_people;
SELECT * FROM people;
INSERT INTO more_people(first_name, last_name, age, birth_date_time)
VALUES
    ('Linda', 'Belcher', 45, '1963-04-25 08:15:16'),
    ('Phillip', 'Frond', 38, '1948-07-04 15:45:12'),
    ('Calvin', 'Fischoeder', 70, '1932-10-11 06:30:30'),
    ('Eric', 'Ricketts', 62, '1960-11-20 20:21:42'),
    ('Wendy', 'Ricketts', 61, '1961-12-16 03:45:25');
SELECT * FROM more_people;

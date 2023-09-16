CREATE TABLE legacy_people(
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) DEFAULT 'no first name' NOT NULL,
    last_name VARCHAR(50) DEFAULT 'no first name' NOT NULL,
    age TINYINT UNSIGNED DEFAULT 0 NOT NULL
);

INSERT INTO legacy_people(first_name, last_name, age)
VALUES
    ('Anita', 'Belcher', 6),
    ('Abel', 'Belcher', 8),
    ('Tina', 'Belcher', 13),
    ('Isaac', 'Belcher', 15),
    ('Bob', 'Belcher', 42),
    ('Linda', 'Belcher', 45),
    ('Phillip', 'Frond', 38),
    ('Isabel', 'Frond', 36),
    ('Calvin', 'Fischoeder', 70),
    ('Abigail', 'Fischoeder', 72),
    ('Jane', 'Doe', 25),
    ('John', 'Doe', '25'),
    ('Merle', 'Young', 82),
    ('Buelah', 'Young', 80),
    ('Eric', 'Ricketts', 62),
    ('Wendy', 'Ricketts', 61),
    ('Sam', 'Park', 35),
    ('Ginger', 'Park', 32);
ALTER TABLE legacy_people RENAME COLUMN agt TO age;
SHOW COLUMNS FROM legacy_people;
SELECT * FROM legacy_people;
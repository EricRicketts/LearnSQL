DROP TABLE more_dogs;
CREATE TABLE more_dogs(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) DEFAULT 'no name' NOT NULL,
    initials CHAR(2) DEFAULT 'NA' NOT NULL,
    age INT DEFAULT 0 NOT NULL
);
DESC more_dogs;
INSERT INTO more_dogs(name, initials, age)
VALUES
    ('Aaron-Jay', 'AJ', 1),
    ('Andrew-James', 'AJ', 2),
    ('Alfie-Jay', 'AJ', 3),
    ('Beau-Alexander', 'BA', 4);
SELECT * FROM more_dogs;

DROP TABLE legacy_cats;
CREATE TABLE legacy_cats(
    cat_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) DEFAULT 'No name' NOT NULL,
    breed VARCHAR(255) DEFAULT 'No breed' NOT NULL,
    age TINYINT UNSIGNED DEFAULT 255 NOT NULL
);
INSERT INTO legacy_cats(name, breed, age)
VALUES
    ('Asher', 'Abyssinian', 1),
    ('Abe', 'American Bobtail', 2),
    ('Albert', 'American Curl', 3),
    ('Angie', 'American Short Hair', 4),
    ('Aretha', 'American Wire Hair', 1),
    ('Aaron', 'Balinese', 2),
    ('Andrew', 'Bengal', 3),
    ('Abigail', 'Birman', 4),
    ('Alexander', 'Tabby', 3),
    ('Avery', 'Tabby', 2),
    ('Anthony', 'Tabby', 1),
    ('Abigail', 'Bombay', 4),
    ('Aurora', 'British Shorthair', 5),
    ('Axel', 'British Shorthair', 8),
    ('Addison', 'British Shorthair', 9),
    ('Angel', 'Burmese', 6),
    ('Adrian', 'Chatreux', 7);
SELECT * FROM legacy_cats;
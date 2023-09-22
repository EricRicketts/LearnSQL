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
    ('Alice', 'Bombay', 4),
    ('Aurora', 'British Shorthair', 5),
    ('Axel', 'British Shorthair', 8),
    ('Addison', 'British Shorthair', 9),
    ('Angel', 'Burmese', 6),
    ('Adrian', 'Chatreux', 7);
SELECT * FROM legacy_cats;

SELECT * FROM legacy_cats
WHERE name = 'Abigail';

UPDATE legacy_cats SET name = 'August'
WHERE name = 'Abigail';

SELECT * FROM legacy_cats
WHERE name = 'August';

UPDATE legacy_cats SET name = 'Abigail'
WHERE name = 'August';

SELECT * FROM legacy_cats
WHERE name = 'Abigail';

SELECT * FROM legacy_cats
WHERE name = 'Abe';

UPDATE legacy_cats SET breed = 'British Shorthair'
WHERE name = 'Abe';

SELECT * FROM legacy_cats
WHERE name = 'Abe';

UPDATE legacy_cats SET breed = 'American Bobtail'
WHERE name = 'Abe';

SELECT * FROM legacy_cats
WHERE name = 'Abe';

UPDATE legacy_cats SET age = 12
WHERE breed = 'Tabby';

SELECT * FROM legacy_cats
WHERE breed = 'Tabby';

CREATE TABLE legacy_shirts(
   id INT PRIMARY KEY AUTO_INCREMENT,
   article VARCHAR(100) DEFAULT 'No shirt type' NOT NULL,
   color VARCHAR(50) DEFAULT 'No shirt color' NOT NULL,
   shirt_size VARCHAR(5) DEFAULT 'N/A' NOT NULL,
   last_worn SMALLINT UNSIGNED DEFAULT 999 NOT NULL
);

INSERT INTO legacy_shirts(article, color, shirt_size, last_worn)
VALUES
    ('t-shirt', 'white', 'S', 10),
    ('t-shirt', 'green', 'S', 200),
    ('polo shirt', 'black', 'M', 10),
    ('tank top', 'blue', 'S', 50),
    ('t-shirt', 'pink', 'S', 0),
    ('polo shirt', 'red', 'M', 5),
    ('tank top', 'white', 'S', 200),
    ('tank top', 'blue', 'M', 15),
    ('oxford button down shirt', 'white', 'XL', 100),
    ('polo shirt', 'maroon', 'L', 300),
    ('cuban collar shirt', 'navy blue', 'XS', 210),
    ('over shirt', 'brown', 'M', 180);

SELECT * FROM legacy_shirts;
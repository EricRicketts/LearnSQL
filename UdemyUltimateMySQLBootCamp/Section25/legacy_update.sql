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

INSERT INTO legacy_shirts(article, color, shirt_size, last_worn)
VALUES
    ('polo shirt', 'purple', 'M', 50);

SELECT * FROM legacy_shirts
WHERE article = 'polo shirt';
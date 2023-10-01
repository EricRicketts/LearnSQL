SHOW TABLES;
CREATE TABLE items(
    id INT PRIMARY KEY AUTO_INCREMENT,
    price DECIMAL(5, 2) DEFAULT 0 NOT NULL,
    name VARCHAR(100) DEFAULT 'No item name' NOT NULL,
    quantity INT DEFAULT 0 NOT NULL
);
DESC items;
INSERT INTO items(price, name, quantity)
VALUES
    (7, 'Block By Block Game', 10),
    (999.99, 'Shape By Shape Game', 20),
    (34.88, 'Brick By Brick Game', 30),
    (298.999, 'Traffic Jam Game', 40),
    (1.9999, 'Rubik\'s Cube', 50);
INSERT INTO items(price, name, quantity) VALUES (51.4357, 'Mind Trap Game', 60);
SELECT * FROM items;
-- note when exceeding the amount of allowed decimals mysql will round to two decimals

CREATE TABLE legacy_pastries(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) DEFAULT 'No name' NOT NULL,
    quantity INT DEFAULT 0 NOT NULL
);
SHOW COLUMNS FROM legacy_pastries;
DROP TABLE legacy_pastries;
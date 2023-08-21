CREATE TABLE partiers (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) DEFAULT '' NOT NULL,
    age INT DEFAULT 19 NOT NULL CHECK (age > 18)
);

INSERT INTO partiers(name, age)
VALUES ('Bugs Bunny', 17); -- will cause an error

CREATE TABLE palindromes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    word VARCHAR(255) CHECK (REVERSE(word) = word)
);
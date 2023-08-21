CREATE TABLE partiers (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) DEFAULT '' NOT NULL,
    age INT,
    CONSTRAINT age_over_18 CHECK (age > 18)
);

INSERT INTO partiers(name, age) VALUES ('Elmer Fudd', 17);
-- above would throw an error called age_over_18 so we could more easily identify
-- the error
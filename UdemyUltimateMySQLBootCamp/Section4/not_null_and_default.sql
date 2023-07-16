-- NOT NULL and DEFAULT
CREATE TABLE unique_cats (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL DEFAULT 'no name',
    breed VARCHAR(50) NOT NULL DEFAULT 'no breed',
    age INTEGER NOT NULL DEFAULT 99
);

-- make use of the DEFAULT to write an INSERT statement with no arguments
INSERT INTO unique_cats() VALUES ();
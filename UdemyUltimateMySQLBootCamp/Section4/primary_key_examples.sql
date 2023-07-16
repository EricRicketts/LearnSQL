-- different ways to specify PRIMARY KEY
CREATE TABLE unique_cats (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL DEFAULT 'no name',
    breed VARCHAR(50) NOT NULL DEFAULT 'no breed',
    age INTEGER NOT NULL DEFAULT 99
);

CREATE TABLE unique_cats (
    id INTEGER AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL DEFAULT 'no name',
    breed VARCHAR(50) NOT NULL DEFAULT 'no breed',
    age INTEGER NOT NULL DEFAULT 99,
    PRIMARY KEY (id)
);

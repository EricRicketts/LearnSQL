CREATE TABLE companies (
    supplier_id INT AUTO_INCREMENT,
    name VARCHAR(255) DEFAULT '' NOT NULL,
    phone VARCHAR(15) DEFAULT '' NOT NULL UNIQUE,
    address VARCHAR(255) DEFAULT '' NOT NULL,
    PRIMARY KEY (supplier_id)
);

INSERT INTO companies(name, phone)
VALUES
    ('Wendy Ricketts', '7034510235'),
    ('Eric Ricketts', '7034510235'); -- this would raise an error
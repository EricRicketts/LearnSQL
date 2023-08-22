CREATE TABLE companies(
     id INT PRIMARY KEY AUTO_INCREMENT,
     name VARCHAR(255) DEFAULT '' NOT NULL,
     phone VARCHAR(15) DEFAULT '' NOT NULL,
     address VARCHAR(255) DEFAULT '' NOT NULL,
     CONSTRAINT name_and_address UNIQUE(name, address)
);

RENAME TABLE companies TO employer;
ALTER TABLE companies RENAME employer;

ALTER TABLE companies RENAME COLUMN address TO home_address;
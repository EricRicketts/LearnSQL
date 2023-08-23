CREATE TABLE companies(
     id INT PRIMARY KEY AUTO_INCREMENT,
     name VARCHAR(255) DEFAULT '' NOT NULL,
     company_short_name VARCHAR(5),
     phone VARCHAR(15) DEFAULT '' NOT NULL,
     address VARCHAR(255) DEFAULT '' NOT NULL,
     CONSTRAINT name_and_address UNIQUE(name, address)
);

ALTER TABLE companies MODIFY COLUMN company_short_name VARCHAR(100) DEFAULT '' NOT NULL;
ALTER TABLE companies CHANGE name company_name VARCHAR(250) DEFAULT 'unknown' NOT NULL;

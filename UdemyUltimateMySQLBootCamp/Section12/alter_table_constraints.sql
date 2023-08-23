CREATE TABLE companies(
     id INT PRIMARY KEY AUTO_INCREMENT,
     name VARCHAR(255) DEFAULT '' NOT NULL,
     company_short_name VARCHAR(5),
     phone VARCHAR(15) DEFAULT '' NOT NULL,
     address VARCHAR(255) DEFAULT '' NOT NULL,
     purchase_price INT,
     CONSTRAINT name_and_address UNIQUE(name, address)
);

ALTER TABLE companies ADD CONSTRAINT positive_purchase_price CHECK (purchase_price > 0);
ALTER TABLE companies DROP CONSTRAINT positive_purchase_price;



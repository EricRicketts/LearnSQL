CREATE TABLE companies(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) DEFAULT '' NOT NULL,
    phone VARCHAR(15) DEFAULT '' NOT NULL,
    address VARCHAR(255) DEFAULT '' NOT NULL,
    CONSTRAINT name_and_address UNIQUE(name, address)
);

CREATE TABLE houses (
    id INT PRIMARY KEY AUTO_INCREMENT,
    purchase_price INT DEFAULT 0 NOT NULL,
    sale_price INT DEFAULT 0 NOT NULL,
    CONSTRAINT sale_price_must_be_bigger_than_purchase_price CHECK(sale_price > purchase_price)
);
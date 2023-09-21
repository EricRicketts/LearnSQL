CREATE TABLE employees(
    id INT PRIMARY KEY AUTO_INCREMENT,
    last_name VARCHAR(100) DEFAULT 'No Last Name' NOT NULL,
    first_name VARCHAR(100) DEFAULT 'No Last Name' NOT NULL,
    middle_name VARCHAR(100) DEFAULT 'No Last Name',
    age TINYINT UNSIGNED DEFAULT 0 NOT NULL,
    current_status VARCHAR(100) DEFAULT 'employed' NOT NULL
);
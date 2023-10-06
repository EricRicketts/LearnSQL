-- good use case for CHAR: state abbreviations, first and last name initials
-- CHAR is optimized for fixed length strings
/*
    CREATE TABLE inventory(
        item_name VARHCAR(255),
        price DECIMAL(8, 2),
        quantity INT
    );
*/
-- Difference between DATETIME and TIMESTAMP, DATETIME covers a much wider span of time.
SELECT CURTIME();
SELECT CURDATE();
SELECT DAYOFWEEK(CURDATE());
SELECT DAYNAME(CURDATE());
SELECT DATE_FORMAT(CURRENT_TIMESTAMP, '%m/%d/%Y %H:%i:%s') AS formatted_date;
SELECT DATE_FORMAT(CURRENT_TIMESTAMP, '%M %D at %l:%i %p') AS formatted_date;

CREATE TABLE tweets(
    id INT PRIMARY KEY AUTO_INCREMENT,
    content VARCHAR(140) DEFAULT 'no tweet' NOT NULL,
    username VARCHAR(100) DEFAULT 'no username' NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL
);

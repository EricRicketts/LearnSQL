DROP TABLE orders, customers;

CREATE TABLE customers (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(50)
);

CREATE TABLE orders (
    id INT PRIMARY KEY AUTO_INCREMENT,
    order_date DATE,
    amount DECIMAL(8 , 2 ),
    customer_id INT,
    FOREIGN KEY (customer_id)
        REFERENCES customers (id)
        ON DELETE CASCADE
);

INSERT INTO customers (first_name, last_name, email)
VALUES
    ('Boy', 'George', 'george@gmail.com'),
    ('George', 'Michael', 'gm@gmail.com'),
    ('David', 'Bowie', 'david@gmail.com'),
    ('Blue', 'Steele', 'blue@gmail.com'),
    ('Bette', 'Davis', 'bette@aol.com'),
    ('Eric', 'Ricketts', 'eric_ricketts@icloud.com'),
    ('Wendy', 'Ricketts', 'wendy_ricketts@icloud.com');


INSERT INTO orders (order_date, amount, customer_id)
VALUES ('2016-02-10', 99.99, 1),
       ('2017-11-11', 35.50, 1),
       ('2014-12-12', 800.67, 2),
       ('2015-01-03', 12.50, 2),
       ('2015-06-03', 33.50, 3),
       ('2015-07-03', 44.50, 3),
       ('2018-03-07', 55.50, 4),
       ('2018-08-08', 66.50, 4),
       ('1999-04-11', 450.25, 5),
       ('1998-04-11', 550.25, 5),
       ('2020-09-21', 660.25, 6),
       ('2022-04-15', 770.25, 6),
       ('2021-04-17', 880.25, 7),
       ('2011-04-18', 990.25, 7);

SELECT * FROM customers;
SELECT * FROM orders;

DELETE FROM customers
       WHERE first_name = 'Boy' AND last_name = 'George';

-- now if we look at the the customers table 'Boy George' is gone AND if we
-- look at the orders table all orders associated with 'Boy George' are gone
-- this is because of the ON DELETE CASCADE constraint on the FOREIGN KEY, so
-- the tables are setup that if a customer is deleted then AUTOMATICALLY all
-- associated orders will be deleted.

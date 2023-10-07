SELECT * FROM customers;
SELECT * FROM orders
ORDER BY customer_id;

INSERT INTO customers(first_name, last_name, email)
VALUES
    ('Bugs', 'Bunny', 'bugs.bunny@gmai.com'),
    ('Daffy', 'Duck', 'daffy.duck@gmai.com'),
    ('Elmer', 'Fudd', 'elmer.fudd@gmai.com');

INSERT INTO orders(order_date, amount, customer_id)
VALUES
    (CONVERT('1935-08-05', DATE), 345.17, 10),
    (CONVERT('1937-09-04', DATE),  45.89, 10),
    (CONVERT('1932-02-02', DATE), 100.25, 10),
    (CONVERT('1938-08-09', DATE),  95.53, 10),
    (CONVERT('1930-06-21', DATE), 257.13, 11),
    (CONVERT('1931-03-17', DATE), 301.23, 11),
    (CONVERT('1934-04-19', DATE), 103.03, 11),
    (CONVERT('1940-05-11', DATE), 111.05, 12),
    (CONVERT('1941-12-07', DATE), 113.07, 12);

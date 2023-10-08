SELECT * FROM customers;
SELECT * FROM orders;

SELECT
    first_name,
    last_name,
    order_date,
    amount
FROM customers
LEFT JOIN orders ON customers.id = orders.customer_id;

SELECT
    first_name,
    last_name,
    IFNULL(order_date, 'no orders') AS order_date,
    IFNULL(amount, 0.00) AS amount
FROM customers
LEFT JOIN orders ON customers.id = orders.customer_id;

SELECT
    first_name,
    last_name
FROM customers
LEFT JOIN orders ON customers.id = orders.customer_id
WHERE order_date IS NULL;

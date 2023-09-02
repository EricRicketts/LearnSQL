SELECT email, order_date, amount
FROM orders
INNER JOIN customers
ON orders.customer_id = customers.id;

SELECT email, order_date, amount
FROM customers
INNER JOIN orders
ON customers.id = orders.customer_id;

DESC customers;
DESC orders;

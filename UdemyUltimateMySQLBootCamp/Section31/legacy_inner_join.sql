SELECT * FROM orders;

SELECT
    first_name,
    last_name,
    order_date,
    amount
FROM customers
INNER JOIN orders ON customers.id = orders.customer_id
ORDER BY last_name, first_name;
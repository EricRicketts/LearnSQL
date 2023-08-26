SELECT
    last_name,
    first_name,
    IFNULL(SUM(amount), 0) AS money_spent
FROM orders
RIGHT JOIN customers
ON orders.customer_id = customers.id
GROUP BY last_name, first_name
ORDER BY money_spent DESC;
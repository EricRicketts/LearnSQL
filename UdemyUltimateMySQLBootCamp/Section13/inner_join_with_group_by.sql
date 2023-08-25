SELECT first_name, last_name, SUM(amount) AS total_amount
FROM customers
INNER JOIN orders
ON customers.id = orders.customer_id
GROUP BY first_name, last_name
ORDER BY total_amount;
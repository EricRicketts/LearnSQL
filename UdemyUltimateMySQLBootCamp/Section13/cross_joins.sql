SELECT
    id
FROM customers
WHERE first_name = 'Boy' AND last_name = 'George';

SELECT
    *
FROM orders
WHERE customer_id = 1;

-- both of the queries below produce the sane results, each customer is paired with each order
-- even though there might not be a relationship between the customer and the order
SELECT * FROM customers, orders;

SELECT *
FROM customers
CROSS JOIN orders;
SELECT
    last_name,
    first_name,
    order_date,
    amount
FROM customers
LEFT JOIN orders
ON customers.id = orders.customer_id
GROUP BY last_name, first_name, order_date, amount
ORDER BY amount DESC;
/*
    A LEFT JOIN will include all of the records from the "Left" table which in this case
    is the customers table.  It will also include the rows from both tables, which is en
    essence an INNER JOIN.  If any rows from the LEFT JOIN table do not have rows that
    result from the INNER JOIN criteria then the columns in those rows will be NULL.

    This might be useful in that we could find customers who have not placed any orders.
*/

SELECT
    last_name,
    first_name,
    order_date,
    amount
FROM orders
         LEFT JOIN customers
         ON customers.id = orders.customer_id
GROUP BY last_name, first_name, order_date, amount
ORDER BY amount DESC;
-- in this case we get the same as the INNER JOIN because there are no records in the orders
-- table that does not have an associated customer

SELECT
    last_name,
    first_name,
    IFNULL(SUM(amount), 0) AS money_spent -- this will convert any NULL values to 0
FROM customers
LEFT JOIN orders
ON customers.id = orders.customer_id
GROUP BY last_name, first_name
ORDER BY money_spent DESC;

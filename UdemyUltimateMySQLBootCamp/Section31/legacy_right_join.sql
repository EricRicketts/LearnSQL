SELECT
    first_name,
    last_name,
    order_date,
    amount
FROM orders
RIGHT JOIN customers ON orders.customer_id = customers.id;
/*
    To get the same result as the LEFT JOIN we need to switch the order of the JOIN
    for the LEFT JOIN we went FROM customers LEFT JOIN orders now we need to FROM orders
    RIGHT JOIN customers, this is what we must do with a RIGHT JOIN to find the customers
    who have no orders, as all orders have a corresponding customer.
*/
SELECT orders.product_name FROM orders
JOIN customers ON customers.id = orders.customer_id
where lower(customers.name) = :name;

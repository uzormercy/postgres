SELECT id, customer_id, order_date
FROM orders
WHERE customer_id IN (
  SELECT id
  FROM customers
  WHERE city = (
    SELECT city
    FROM customers
    WHERE id = 8
  )
);
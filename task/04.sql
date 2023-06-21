SELECT customer_id, AVG(amount) AS average_amount, MIN(amount) AS minimum_amount, MAX(amount) AS maximum_amount
FROM (
  SELECT customer_id, SUM(amount) AS amount
  FROM orders
  GROUP BY customer_id
) AS customer_order_totals
GROUP BY customer_id;
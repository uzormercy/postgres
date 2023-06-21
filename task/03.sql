WITH customer_transactions AS (
  SELECT customer_id, SUM(amount) AS total_amount
  FROM transactions
  GROUP BY customer_id
)
SELECT customer_id, total_amount
FROM customer_transactions
WHERE total_amount >= 5000;

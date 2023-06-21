SELECT id, salary,
  CASE
    WHEN salary < 5000 THEN 'Low'
    WHEN salary BETWEEN 5000 AND 10000 THEN 'Medium'
    ELSE 'High'
  END AS salary_category
FROM employees;
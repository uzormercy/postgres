
    # CASE Statements: 
    - Problem: Given a table named "employees" with columns "employee_id" and "salary," write a query to display the employee_id, salary, and a column named "salary_category" that categorizes the salary as 'Low,' 'Medium,' or 'High' based on the following conditions:
    If the salary is less than 5000, categorize it as 'Low.'
    If the salary is between 5000 and 10000 (inclusive), categorize it as 'Medium.'
    If the salary is greater than 10000, categorize it as 'High.'

##
    # SubQueries: 
    - Problem: Consider two tables, "orders" and "customers," with columns "order_id," "customer_id," and "order_date." Write a query to retrieve the order_id, customer_id, and order_date of all orders placed by customers who live in the same city as customer_id = 100.
##

    # Common Table Expressions (CTEs): 
    - Problem: Given a table named "transactions" with columns "transaction_id," "customer_id," and "amount," write a query to find the total transaction amount for each customer. However, exclude customers who have a total transaction amount less than 5000. Use a CTE to achieve this.
##

    # Aggregations: 
    - Problem: 
    Consider a table named "orders" with columns "order_id," "customer_id," and "order_date." Write a query to calculate the average, minimum, and maximum order amounts for each customer. Display the customer_id along with these calculated values.
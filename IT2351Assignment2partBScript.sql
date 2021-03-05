/*Assignment2Part2B joining orders tables onto customers table using customer_id to join the two. */
SELECT order_date,shipped_date,customer_city,customer_state, CONCAT(customer_first_name,' ' , customer_last_name) AS FullName
 FROM customers
        JOIN orders ON customers.customer_id = orders.customer_id
    ORDER BY customer_state,customer_city,customer_last_name,customer_first_name;
      
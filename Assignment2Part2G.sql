
/*Assignment2Part2G -Brady Valentine added in customer state and title only set to display Ohio orders. */
  SELECT 
    customer_first_name, customer_last_name, order_date, shipped_date, artist, order_qty, title, customer_state
FROM
    orders
        JOIN
    order_details ON orders.order_id = order_details.order_id
    JOIN items ON items.item_id = order_details.item_id
    JOIN customers ON orders.customer_id = customers.customer_id
    WHERE order_qty >1 AND customer_state = 'OH';
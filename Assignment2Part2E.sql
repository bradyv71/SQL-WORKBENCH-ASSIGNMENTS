
/*Assignment2Part2E -Brady Valentine joined customers table using customer_id to list the customer name instead of id  */
SELECT 
    customer_first_name, customer_last_name, order_date, shipped_date, artist, order_qty
FROM
    orders
        JOIN
    order_details ON orders.order_id = order_details.order_id
    JOIN items ON items.item_id = order_details.item_id
    JOIN customers ON orders.customer_id = customers.customer_id;
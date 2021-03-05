/* Assignment2Part2C. joined the orders tables and the order_details table using order_id*/

SELECT 
    customer_id, order_date, shipped_date, item_id, order_qty
FROM
    orders
        JOIN
    order_details ON orders.order_id = order_details.order_id;


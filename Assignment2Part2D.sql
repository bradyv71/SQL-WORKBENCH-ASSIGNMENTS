/*    Assignment2Part2D. changed part 2c so that it joins using item_id allowing the artist name to display instead of item_id*/

SELECT 
    customer_id, order_date, shipped_date, artist, order_qty
FROM
    orders
        JOIN
    order_details ON orders.order_id = order_details.order_id
    JOIN items ON items.item_id = order_details.item_id;
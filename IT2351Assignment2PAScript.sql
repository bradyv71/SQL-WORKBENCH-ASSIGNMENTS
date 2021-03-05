

/*IT2351Assignment2PartA joining three tables order_deta,items, and orders to sort the data by title and artist. */

SELECT 
    title, artist, unit_price, order_qty
FROM
    customers
        JOIN
    orders ON customers.customer_id = orders.customer_id
        JOIN
    order_details ON orders.order_id = order_details.order_id
        JOIN
    items ON order_details.item_id = items.item_id
ORDER BY title AND artist;


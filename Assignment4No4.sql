/*Brady Valentine Assignment4No4 using the DATE_FORMAT and DATEDIFF functions to find the days to ship from order date to ship date,used the EXTRACT date function to implement the 2 day extension to the order date. */
SELECT order_id,
    DATE_FORMAT(order_date, '%Y-%m-%e') AS order_date,DATE_FORMAT(DATE_ADD(order_date, INTERVAL 2 DAY),'%Y-%m-%e') AS approx_ship_date,ship_date,
    DATEDIFF(ship_date, order_date) AS days_to_ship
FROM orders
WHERE EXTRACT(MONTH FROM order_date) = 3;

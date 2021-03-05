/* */

SELECT order_id AS "Customer ID", order_date AS "Purchase Date", shipped_date AS "Shipped On", DATEDIFF(shipped_date, order_date) AS Days_to_ship 
FROM orders
ORDER BY customer_id AND Days_to_ship;
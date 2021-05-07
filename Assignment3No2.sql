/* Brady Valentine Assignment 3 #2 using the count and sum to get the order count and shipping amount from the orders table*/
SELECT COUNT(order_id) as OrderCount,
SUM(ship_amount) AS ShipAmount
FROM orders;
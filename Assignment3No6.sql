/*Brady Valentine Assignment 3 #6 returning email address,order_id and order total */

SELECT email_address, oi.order_id, sum((item_price - discount_amount) * quantity) as OrderTotal
FROM order_items oi JOIN orders o ON oi.order_id = o.order_id JOIN customers c ON o.customer_id = c.customer_id
GROUP BY email_address, order_id;
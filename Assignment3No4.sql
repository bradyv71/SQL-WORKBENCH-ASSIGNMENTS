/*Brady Valentine Assignment 3 #4 */

SELECT category_name,product_name, SUM((list_price - discount_amount) * quantity) AS GrandTotal
FROM products p
JOIN order_items oi ON p.product_id = oi.product_id
JOIN categories c ON p.category_id = c.category_id
GROUP BY product_name WITH ROLLUP
/*Brady Valentine Assignment4No6.Created a view using order_items_products.Using the orders table along with products and order_items  */

CREATE VIEW order_item_products AS
SELECT O.order_id, O.order_date, O.tax_amount, O.ship_date, product_name, item_price, discount_amount, (item_price-discount_amount) AS final_price, quantity, (item_price-discount_amount)*quantity AS item_total
FROM Orders AS O, Order_Items AS OI, Products AS P
WHERE O.order_id = OI.order_id AND OI.product_id = P.product_id;
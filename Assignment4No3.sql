/*Brady Valentine Assignment4No3 using the round function to calc discount amount with 2 decimal places */

SELECT list_price,discount_percent, ROUND(list_price * discount_percent / 100,2) AS discount_amnt
FROM products;
USE my_guitar_shop;
-- Brady Valentine 4/19/2021 ASSIGNMENT 6 PART 3
DROP FUNCTION IF EXISTS discount_price;
-- Created function discount_price 
DELIMITER //
CREATE FUNCTION discount_price
(
item_id_param INT
)
RETURNS decimal(10,2)
DETERMINISTIC READS SQL DATA
BEGIN
DECLARE discount_price_var decimal(10,2);
SELECT item_price-discount_amount
INTO discount_price_var   -- discount_price_var will hold result from item_price - discount_amount
FROM order_items  -- using the order_items table
WHERE item_id= item_id_param;
RETURN (discount_price_var);
END//

DELIMITER ;

SELECT discount_price(item_id) AS discount_price -- passing item_id
FROM order_items
WHERE item_id =2; -- calling the function discount_price
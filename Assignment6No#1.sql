/*Created a stored procedure named productCount, declared a variable named productCnt that is storing the count of the products in products table. Using "//" as Delimiter */
USE my_guitar_shop;
-- BRADY VALENTINE ASSIGMENT 6 PART 1 4/19/2021 CREATING PRODUCTCOUNT PROCEDURE
DROP PROCEDURE IF EXISTS productCount;
DELIMITER //

CREATE PROCEDURE productCount()
BEGIN
DECLARE productCnt INT;

SELECT count(*) INTO productCnt 
FROM products;
 IF productCnt>=20 THEN SELECT 'The number of products is greater than or equal to 20' as col1;
   ELSE SELECT 'The number of products is less than 20' as col1;
END IF;
END 
//
CALL productCount();
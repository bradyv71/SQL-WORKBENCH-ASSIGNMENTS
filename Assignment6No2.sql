
USE my_guitar_shop;
DROP PROCEDURE IF EXISTS insertCategory;
-- Brady Valentine ASSIGNMENT 6 PART 2 SUCCESSFUL ENTRY USING KEYBOARDS INSTEAD OF GUITARS 4/19/2021
DELIMITER //

CREATE PROCEDURE insertCategory(category_id_var INT,category_name_var varchar(255))
BEGIN
DECLARE sql_error TINYINT DEFAULT FALSE;
DECLARE CONTINUE HANDLER FOR SQLEXCEPTION -- exception handler
SET sql_error = TRUE;

START TRANSACTION;
UPDATE categories -- UPDATING CATEGORIES TABLE 
SET category_id = category_id_var
WHERE category_name = category_name_var;
IF sql_error = FALSE THEN
COMMIT;
ELSE
ROLLBACK;
END IF;
END//

DELIMITER ;

CALL insertCategory(4,"Keyboards"); -- passed in keyboards into insertCategory categories table

SELECT category_id, category_name
FROM categories WHERE category_id=4;  -- testing to make sure categories were updated
USE ap;
DROP PROCEDURE IF EXISTS test;
/*
Brady Valentine Assignment 7 Part 3 sql statement #2 5/5/2021

*/
DELIMITER //

CREATE PROCEDURE test()
BEGIN
START TRANSACTION;
DELETE invoice_line_items FROM invoice_line_items WHERE invoice_id= 114; -- 
DELETE invoice_id FROM invoices WHERE invoice_id= 114;

IF sql_error = FALSE THEN
COMMIT;
ELSE -- roll back if commit failed
ROLLBACK;
END IF;
END//

DELIMITER ;

CALL test();
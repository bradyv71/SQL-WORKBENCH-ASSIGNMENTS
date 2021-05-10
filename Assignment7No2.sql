
USE ap;
DROP PROCEDURE IF EXISTS test;
/*
Brady Valentine Assignment 7 Part 2 sql #1 5/4/2021
*/
DELIMITER //

CREATE PROCEDURE test()
BEGIN
START TRANSACTION;
UPDATE invoices SET vendor_id = 123 WHERE vendor_id = 122; -- updating invoices tables so that Federal Express Corp now has the old id of united parcel service.
DELETE vendors --
FROM vendors WHERE vendor_id=122; -- deleting old vendor of 122 from the table which would be the unitedparcelservice

UPDATE vendors SET vendor_name = 'FedUp' WHERE vendor_id = 123; -- updating name of 'vendor 123'also known as Federal Express Corp to "FedUp"
IF sql_error = FALSE THEN
COMMIT;
ELSE -- roll back if commit failed
ROLLBACK;
END IF;
END//

DELIMITER ;

CALL test();

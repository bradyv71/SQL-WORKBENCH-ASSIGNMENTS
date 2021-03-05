/*    Assignmnet2PartI Brady Valentine update for unit price increase by 10%*/
UPDATE items
SET unit_price=unit_price*.10
WHERE unit_price>17;
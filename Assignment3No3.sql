/*Brady Valentine Assignment 3 #3 */
SELECT category_name, COUNT(*) AS ProductCount,MAX(list_price) AS MostExpensive
FROM categories c JOIN products p
ON c.category_id = p.category_id
GROUP BY category_name
ORDER BY ProductCount DESC
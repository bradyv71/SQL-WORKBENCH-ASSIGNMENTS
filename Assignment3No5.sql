/*Brady Valentine Assignment 3 #5 creating a subquery to join categories and products table */ 
SELECT DISTINCT category_name
FROM categories
WHERE category_id IN(SELECT category_id FROM products)
ORDER BY category_name;
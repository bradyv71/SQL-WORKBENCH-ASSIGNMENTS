Create View items_ordered AS
Select category_name,product_name, list_price,quantity
From products 
JOIN categories on categories.category_id = products.category_id
JOIN order_items on order_items.quantity=products.product_id;
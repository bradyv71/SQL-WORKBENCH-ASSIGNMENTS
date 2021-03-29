
/* Brady Valentine Assignment4No1 returning list price and formatting to display same data in different perfered formats*/
SELECT list_price,FORMAT(list_price,1) AS Dec_price,
CONVERT(list_price,SIGNED) AS Int_price,
CAST(list_price AS SIGNED) AS signed_integer
FROM products
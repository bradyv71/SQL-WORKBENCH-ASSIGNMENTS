/* Brady Valentine Assignment4No2 Created results for usernames and domains from email addresses using substrings  */
/* */
SELECT email_address,LENGTH(email_address) AS 'Length',SUBSTRING_INDEX(email_address,'@',1) AS Username,
SUBSTRING_INDEX(email_address,'@',-1) AS Domain
FROM customers;


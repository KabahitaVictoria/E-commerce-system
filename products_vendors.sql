SELECT customers.type AS "customer_type", products.name AS "product_name"
FROM customers, products
WHERE customers.type = 'vendor' AND customers.vendor_ID = products.vendor_ID;

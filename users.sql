-- all users
SELECT *
FROM customers;

-- users of type; vendor
SELECT * FROM customers
WHERE customers.type = 'vendor';

-- users of type; admin or buyer
SELECT * FROM customers
WHERE customers.type = 'admin' OR customers.type = 'buyer';


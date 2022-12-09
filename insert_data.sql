-- categories
INSERT INTO categories
VALUES ('C1', 'fruits'), ('C2', 'meats'), ('C3', 'snacks'), ('C4', 'cakes');

SELECT * FROM categories;

-- vendors
INSERT INTO vendors
VALUES ('V1', 'C4'), ('V2', 'C2'), ('V3', 'C1'), ('V4', 'C3');

SELECT * FROM vendors;

-- products
INSERT INTO products 
VALUES ('P1', 'apples', 1500, 'juicy green apples', 
  'https://blog-images.pharmeasy.in/2022/06/05130314/25.jpg', 
  'C1', 'V3'),
('P2', 'bananas', 500, 'yummy yellow bananas', 
 'https://i5.walmartimages.com/asr/5939a6fa-a0d6-431c-88c6-b4f21608e4be.f7cd0cc487761d74c69b7731493c1581.jpeg', 
 'C1', 'V3'),
('P3', 'chocolate wedding cake', 100000, 'three tier delectable wedding cake with vanilla icing', 
 'https://www.brides.com/thmb/5DrIo7aJYI1EUNlA03nd9p-6X_A=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/sq-3101cf0cdac14d829785dcf5aad258b1.jpg', 
 'C4', 'V1'),
('P4', 'red velvet cake slices', 10000, 'yummy slices of red velvet cake', 
 'https://sallysbakingaddiction.com/wp-content/uploads/2019/02/red-velvet-cake-slice-2.jpg', 
 'C4', 'V1');

SELECT * FROM products;

-- customers
INSERT INTO customers
VALUES ('Cu1', 'Marian Casey', 'marey21@gmail.com', '+256754321001', 'fhghyr43eurt-fj', 'Kampala', 'vendor', 'V3'),
('Cu2', 'Raniah Tweya', 'ranny33@gmail.com', '+256776532145', 'erk/ds$s21fth', 'Kampala', 'admin', 'V1'),
('Cu3', 'John Segwa', 'johnwa47@gmail.com', '+256709873213', 'johnew23fb>w', 'Wakiso', 'buyer', NULL),
('Cu4', 'Mark Dobby', 'markobby415@gmail.com', '+256700765323', 'bverhv8rjkej', 'Kawempe', 'buyer', NULL);

SELECT * FROM customers;

-- statuses 
INSERT INTO statuses 
VALUES ('S1', 'liked'),
	   ('S2', 'added'),
	   ('S3', 'paid'),
	   ('S4', 'delivered');

SELECT * FROM statuses;

-- orders
INSERT INTO orders
VALUES ('O1', 5, 'S4'),
	   ('O2', 10, 'S3');

SELECT * FROM orders;

-- added_to
INSERT INTO added_to
VALUES ('P1', 'O2'),
	   ('P3', 'O1');
	   
SELECT * FROM added_to;
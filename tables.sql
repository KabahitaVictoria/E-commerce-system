-- categories table
CREATE TABLE categories (
	ID varchar,
	name varchar NOT NULL,
	PRIMARY KEY (ID)
);

SELECT * FROM categories;

-- vendors table
CREATE TABLE vendors (
	ID varchar,
	category_ID varchar,
	PRIMARY KEY (ID),
	FOREIGN KEY (category_ID) REFERENCES categories (ID)
);

SELECT * FROM vendors;

-- products table 
CREATE TABLE products (
	ID varchar,
	name varchar NOT NULL,
	price float DEFAULT 0.0,
	description varchar,
	image_url varchar,
	category_ID varchar,
	vendor_ID varchar,
	PRIMARY KEY (ID),
	FOREIGN KEY (category_ID) REFERENCES categories (ID),
	FOREIGN KEY (vendor_ID) REFERENCES vendors (ID)
);

SELECT * FROM products;

-- customers table 
CREATE TABLE customers (
	ID varchar,
	name varchar NOT NULL,
	email varchar UNIQUE,
	contact varchar UNIQUE,
	password varchar UNIQUE,
	location varchar NOT NULL,
	type varchar DEFAULT 'buyer',
	vendor_ID varchar,
	PRIMARY KEY (ID),
	FOREIGN KEY (vendor_ID) REFERENCES vendors (ID)
);

SELECT * FROM customers;

-- statuses table; status of orders
CREATE TABLE statuses (
	ID varchar,
	name varchar UNIQUE NOT NULL,
	PRIMARY KEY (ID)
);

SELECT * FROM statuses;

-- orders table
CREATE TABLE orders (
	ID varchar,
	quantity bigint DEFAULT 1,
	status_ID varchar,
	PRIMARY KEY (ID),
	FOREIGN KEY (status_ID) REFERENCES statuses(ID)
);

SELECT * FROM orders;

-- added_to table; representing many to many relationship of products and orders table
CREATE TABLE added_to (
	product_ID varchar,
	order_ID varchar,
	FOREIGN KEY (product_ID) REFERENCES products(ID),
	FOREIGN KEY (order_ID) REFERENCES orders(ID)
);

SELECT * FROM added_to;
IF OBJECT_ID('products_categories', 'U') IS NOT NULL DROP TABLE products_categories;
IF OBJECT_ID('categories', 'U') IS NOT NULL DROP TABLE categories;
IF OBJECT_ID('products', 'U') IS NOT NULL DROP TABLE products;

CREATE TABLE products (
	id IDENTITY(1,1) PRIMARY KEY,
	name VARCHAR(128)
);

CREATE TABLE categories (
	id IDENTITY(1,1) PRIMARY KEY,
	name VARCHAR(128)
);

CREATE TABLE products_categories (
	productId INT,
	categoryId INT,
	PRIMARY KEY (productId, categoryId),
	FOREIGN KEY (productId) REFERENCES products(id),
	FOREIGN KEY (categoryId) REFERENCES categories(id)
);

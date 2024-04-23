SELECT p.name, c.name FROM products p
LEFT JOIN products_categories pc ON p.id = pc.productId
LEFT JOIN categories c ON c.id = pc.categoryId

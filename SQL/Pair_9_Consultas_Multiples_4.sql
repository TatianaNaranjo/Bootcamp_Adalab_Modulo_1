USE Northwind;

/*1 Extraer info de productos beberages*/
SELECT product_id, product_name, category_id
FROM products
WHERE category_id IN (SELECT category_id FROM categories WHERE category_name = 'Beverages');

/*2 Lista de países donde viven clientes pero ahí no hay proveedor*/
SELECT company_name, country
FROM customers
WHERE country NOT IN (SELECT country FROM suppliers);

/* ¿Cuántas empresas hay en cada país que no tiene proveedor?*/

/*3 Clientes que compraron +20 'Grandma's Boysenberry Spread'*/
SELECT customer_id, COUNT(order_id)
FROM orders
WHERE category_id IN (SELECT product_id FROM products WHERE product_id = 6);

/*4 10 productos más caros*/
SELECT product_name, product_id, unit_price
FROM products
ORDER BY unit_price desc
LIMIT 10;

/*5 Producto más vendido y qué cantidad ha sido*/
SELECT orderdetails.product_id, orderdetails.quantity
FROM orderdetails INNER JOIN products
WHERE products.product_id IN (SELECT products.product_name FROM products);
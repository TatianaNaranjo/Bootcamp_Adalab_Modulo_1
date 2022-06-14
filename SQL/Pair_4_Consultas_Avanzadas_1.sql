USE northwind;

/*1 productos + baratos y caros*/
SELECT MIN(unit_price) AS 'lowest_price'
FROM products;

SELECT MAX(unit_price) AS 'highest_price'
FROM products;

/*2  precio medio de todos los productos*/
SELECT AVG(unit_price) AS 'precio_medio'
FROM products;

/*3 Carga máxima y mínima de los pedidos de UK*/
SELECT MIN(freight)
FROM orders
WHERE ship_country = 'UK';

SELECT MAX(freight)
FROM orders
WHERE ship_country = 'UK';

/*4 productos que se venden por encima de precio medio*/
SELECT AVG(unit_price) AS 'precio_medio'
FROM products;

SELECT product_id, product_name, unit_price
FROM products
WHERE unit_Price >= 'precio_medio';

/*5 productos descontinuados*/
SELECT COUNT(product_id)
FROM products
WHERE discontinued = '1';

/*6 product id y product name de productos no descontinuados; solo 10 con id + elevado*/
SELECT product_id, product_name
FROM products
WHERE NOT discontinued = '1'
ORDER BY product_id DESC
LIMIT 10;

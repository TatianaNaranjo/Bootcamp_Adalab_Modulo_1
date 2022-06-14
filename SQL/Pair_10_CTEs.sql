-- Ej 1: Extraer en una CTE todos los nombres de las compañias y los id de los clientes.

USE Northwind;
WITH clientes_y_compañias AS (
	SELECT customer_id, company_name
	FROM customers)
SELECT customer_id, company_name
FROM clientes_y_compañias;

-- Ej2: Selecciona solo los de que vengan de "Germany".
USE Northwind;
WITH clientes_y_compañias AS (
	SELECT customer_id AS IdCliente, company_name AS NombreCompañia, country AS Pais
	FROM customers
    WHERE country = 'Germany')
SELECT *
FROM clientes_y_compañias;
    
-- Ej3: Extraed el id de las facturas y su fecha de cada cliente.
USE Northwind;
WITH clientes_y_compañias AS (
    SELECT customer_id, company_name
    FROM customers)
SELECT c.customer_id, c.company_name, o.order_id, o.order_date
FROM orders AS o
JOIN clientes_y_compañias AS c
ON o.customer_id = c.customer_id
ORDER BY company_name;
    
-- Ej4: Contad el número de facturas por cliente.
USE Northwind;
WITH pedidos_clientes AS (
    SELECT orders.order_id, orders.customer_id, customers.company_name
    FROM orders
    LEFT JOIN customers
    ON orders.customer_id = customers.customer_id)
SELECT company_name AS NombreCliente, COUNT(order_id) AS CantidadPedidos
FROM pedidos_clientes
GROUP BY customer_id;
    
-- Ej5: Cuál la cantidad media pedida de todos los productos ProductID.
USE Northwind;
WITH pedido_medio_producto AS (
  SELECT product_id AS IDProducto, product_name AS NombreProducto, AVG(quantity_per_unit) AS CantidadProductoAVG
  FROM products
  GROUP BY product_id)  
SELECT * 
FROM pedido_medio_producto;
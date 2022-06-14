-- Ej1: Productos categoría beverages. Sacar Id, nombre y categoria.--
USE Northwind;
SELECT products.product_id, products.product_name, products.category_id, categories.category_name
FROM products
LEFT JOIN categories
ON products.category_id = categories.category_id
WHERE categories.category_name = 'Beverages';

-- Ej2:Extraed la lista de países donde viven los clientes, pero no hay ningún proveedor 
-- ubicado en ese país.--
USE Northwind;
SELECT country
FROM customers
WHERE country NOT IN (
	SELECT country
	FROM suppliers)
GROUP BY country;

-- Ej3: 
USE Northwind;
SELECT customers.customer_id AS ID_Cliente, customers.company_name AS Nombre_Cliente, orders.order_id AS ID_Pedido
FROM customers
LEFT JOIN orders
ON customers.customer_id = orders.customer_id
WHERE orders.order_id IN (
	SELECT orderdetails.order_id
    FROM orderdetails
    WHERE orderdetails.order_id IN(
		SELECT orderdetails.order_id
        FROM orderdetails
        WHERE orderdetails.product_id = 6 AND orderdetails.quantity >= 20  ));
    
# 4. 10 productos mas caros
USE Northwind;
SELECT product_name AS nombre_producto, unit_price AS precio
FROM products 
ORDER BY precio DESC
LIMIT 10;

# 5. producto que más ha sido comprado y la cantidad que se compró
USE Northwind;
SELECT product_id AS id_producto, product_name AS nombre_producto, quantity AS cantidad
FROM orderdetails 
NATURAL JOIN products
ORDER BY quantity DESC
LIMIT 1;




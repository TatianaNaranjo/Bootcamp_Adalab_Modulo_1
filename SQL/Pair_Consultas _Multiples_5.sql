-- Ej1: Extraed los pedidos con el máximo "OrderDate" para cada empleado. Nuestro jefe quiere saber 
--      la fecha de los pedidos más recientes que ha gestionado cada empleado. Para eso nos pide que 
--      lo hagamos con una query correlacionada.

USE Northwind;
SELECT employee_id, MAX(order_date)
FROM orders
GROUP BY employee_id;

USE Northwind;
SELECT orders.employee_id, MAX(orders.order_date), employees.first_name, employees.last_name
FROM orders 
LEFT JOIN employees 
ON orders.employee_id = employees.employee_id
WHERE orders.order_date = (
	SELECT MAX(order_date)
    FROM orders)
GROUP BY employee_id;

-- EJ2: Extraed el precio unitario (UnitPrice) de cada producto vendido. Supongamos que ahora 
--      nuestro jefe quiere un informe de los productos más vendidos y su precio unitario. De nuevo 
--      lo tendréis que hacer con queries correlacionadas.

USE Northwind;
SELECT product_name AS NombreProducto, quantity AS Cantidad, unit_price AS PrecioUnidad
FROM orderdetails
NATURAL JOIN products
ORDER BY quantity DESC
LIMIT 10;

-- EJ3: Ciudades que empiezan con "A" o "B". Por un extraño motivo, nuestro jefe quiere que le 
--      devolvamos una tabla con aquelas compañias que están afincadas en ciudades que empiezan 
--      por "A" o "B". Necesita que le devolvamos la ciudad, el nombre de la compañia y el nombre 
--      de contacto.
# ejercicio 3 Ciudades que empiezan con "A" o "B"
USE Northwind;
SELECT company_name, contact_name, city 
FROM customers
WHERE (city 
LIKE  'A%') OR (city LIKE 'B%');

# ejercicio 4 Número de pedidos que han hecho en las ciudades que empiezan con L
SELECT company_name, contact_name, city, COUNT(orders.order_id) AS num_pedidos
FROM customers
NATURAL JOIN orders
GROUP BY customer_id
HAVING city NOT LIKE 'L%';

# ejercicio 5 Clientes cuyo "ContactTitle" no incluya "Sales".
SELECT contact_name, contact_title, company_name
FROM customers
WHERE contact_title NOT LIKE '%Sales%';

# ejercicio 6 clientes que no tengan una "A" en segunda posición en su nombre
SELECT contact_name
FROM customers
WHERE contact_name NOT LIKE '_a%';

USE northwind;

#1 Relación entre número de pedidos y máxima carga
SELECT employee_id AS id_empleado, MAX(freight) AS carga_max, COUNT(DISTINCT order_id) AS num_pedido
FROM orders
GROUP BY (employee_id);

#2 Descartar pedidos sin fecha y ordénados
SELECT employee_id AS id_empleado, MAX(freight) AS carga_max, COUNT(DISTINCT order_id) AS num_pedido
FROM orders
WHERE order_date is not null
GROUP BY (employee_id)
ORDER BY id_empleado;

 #3 Números de pedidos por día
 SELECT count(DAY(order_date)) as dia, count(MONTH(order_date)) as mes, YEAR(order_date) as año, COUNT(DISTINCT order_id) as num_pedidos
 FROM orders
 GROUP BY DAY(order_date), MONTH(order_date), YEAR(order_date);
 
 #4 Número de pedidos por mes y año
 SELECT count(MONTH(order_date)) as mes, YEAR(order_date) as año, COUNT(DISTINCT order_id) as num_pedidos
 FROM orders
 GROUP BY DAY(order_date), MONTH(order_date), YEAR(order_date);
 
 #5 Ciudades con más de 4 empleadas
 SELECT COUNT(DISTINCT employee_id) AS num_empleados, city AS Ciudad
 FROM employees
GROUP BY city
HAVING COUNT(DISTINCT employee_id) >= 4;
 
#6 Cantidad monetaria
SELECT 
CASE 
	WHEN unit_price * quantity - discount > 2000 THEN "Alto"
	ELSE "Bajo"
	END AS rango_cantidad_monetaria, order_id
FROM orderdetails;
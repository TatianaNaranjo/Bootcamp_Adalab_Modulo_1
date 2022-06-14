/* Ej1: query uqe nos devuelva todos los clientes y proveedores que tenemos en la BBDD. 
   Mostrad la ciudad a la que pertenecen, el nombre de la empresa y el nombre del contacto, 
   además de la relación (Proveedpr o Cliente). Pero importante! No debe haber duplicados 
   en nuestra respuesta */
   
USE Northwind;
SELECT 'customers' AS Relacion, company_name AS Nombre_cliente, contact_name AS Nombre_Contacto_Cliente, city AS Ciudad_Cliente
FROM customers
UNION 
SELECT 'Suppliers' AS Relacion, company_name AS Nombre_Proveedor, contact_name AS Nombre_Contacto_Proveedor, city AS Ciudad_Proveedor
FROM suppliers
ORDER BY Nombre_cliente;



/*Ej2: Extraer todos los pedidos gestinados por "Nancy Davolio"
En este caso, nuestro jefe quiere saber cuantos pedidos ha gestionado "Nancy Davolio", 
una de nuestras empleadas. Nos pide todos los detalles tramitados por ella. */

USE Northwind;
SELECT orders.employee_id AS ID_Empleado, COUNT(orders.order_id) AS Cantidad_pedidos, employees.first_name AS Nombre_Empleado, employees.last_name AS Apelldo_Empleado
FROM orders
LEFT JOIN employees
ON orders.employee_id = employees.employee_id
GROUP BY (orders.employee_id)
HAVING employees.first_name ='Nancy' AND employees.last_name = 'Davolio';

/* Ej3: Extraed todas las empresas que no han comprado en el año 1997 */
USE Northwind;
SELECT customers.company_name,YEAR(orders.order_date)
FROM orders
LEFT JOIN customers
ON customers.customer_id = orders.customer_id
WHERE YEAR(orders.order_date) != '1997';

/* Ej4: Extraed toda la información de los pedidos donde tengamos "Konbu" */
USE Northwind;
SELECT products.product_name AS Nombre_Producto, orderdetails.order_id AS Numero_Pedido
FROM products
INNER JOIN orderdetails
ON products.product_id = orderdetails.product_id
WHERE products.product_name = 'Konbu';







USE Northwind;

/*1 extraer en una CTE todos los nombres de las compañias y los id de los clientes*/
CREATE TABLE datos_compañia;

WITH datos_compañia AS (
	SELECT company_name, customer_id
    FROM customers)
SELECT *
FROM datos_compañia;

/*2 Selecciona solo los de que vengan de "Germany"*/

WITH datoscompañia AS (
	SELECT company_name, customer_id, country
    FROM customers
    WHERE country = "Germany")
SELECT *
FROM datoscompañia;

/*3 id de las facturas y su fecha de cada cliente*/

WITH datos_compañia AS (
	 SELECT order_id, order_date, customer_id
     FROM orders)
SELECT customers.company_name, datos_compañia.order_id,datos_compañia.order_date,datos_compañia.customer_id
FROM customers 
JOIN datos_compañia 
ON customers.customer_id = datos_compañia.customer_id;

/*4 facturas para cada cliente*/
WITH datos_compañia AS (
	 SELECT order_id, order_date, customer_id
     FROM orders)
SELECT customers.company_name, COUNT(datos_compañia.order_id),datos_compañia.order_date,datos_compañia.customer_id
FROM customers 
JOIN datos_compañia 
ON customers.customer_id = datos_compañia.customer_id;


/*EJERCICIO 5:
Cuál la cantidad media pedida de todos los productos ProductID.
Necesitaréis extraet la suma de las cantidades por cada producto y calcular la media de to */

SELECT SUM(cantidades) AS TOTAL DE CANTIDADES
FROM tabla
	with MEDIA_CANTIDADES AS(
		SELECT AVG(cantidades)
        FROM TABLA 2
SELECT TABLA1.
    
    
    

AVG 


USE Northwind;

/*1 nombre empresas, ID de los pedidos y la fecha de los mismos*/
SELECT customers.company_name, orders.order_id, orders.order_date
FROM customers
LEFT JOIN orders
ON customers.customer_id = orders.customer_id;

/*2 pedidos por cliente de UK*/
SELECT customers.company_name, COUNT(orders.order_id)
FROM customers
LEFT JOIN orders
ON customers.customer_id = orders.customer_id
WHERE customers.country = 'UK'
GROUP BY customers.company_name;

/*3 nombre de todas las empresas de UK (hayan pedido o no) y los ID de todos los pedidos realizados, contact_name y order_date*/
SELECT customers.company_name, orders.order_id, customers.contact_name, orders.order_date
FROM customers
LEFT JOIN orders
ON customers.customer_id = orders.customer_id
WHERE customers.country = 'UK';

/*4 empleados de la misma ciudad: ubicación, nombre y apellidos de empleados y supervisores*/
SELECT A.first_name AS nombre1, A.last_name AS apellido1, A.city AS ciudad1, A.title AS cargo1, B.first_name AS nombre2, B.last_name AS apellido2, B.city AS ciudad2, B.title AS cargo2
FROM employees A, employees B
WHERE A.title > B.title;
USE Northwind;

/*1 Ciudad, nombre_empresa, nombre_contacto, relación entre ambos SIN DUPLICADOS*/
SELECT city, company_name, contact_name
FROM customers
UNION
SELECT city, company_name, contact_name
FROM suppliers; 

/*2 Pedidos gestionados por Nancy Davolio*/
SELECT * 
FROM orders
WHERE employee_id IN (SELECT employee_id FROM employees WHERE first_name = 'Nancy');

/*3 Empresas que NO han comprado en 1997*/
SELECT company_name 
FROM customers
WHERE customer_id NOT IN (SELECT customer_id FROM orders WHERE YEAR(order_date) = 1997);

/*Otra forma de hacer el ejercicio 3*/
SELECT company_name 
FROM customers
WHERE customer_id NOT IN (SELECT customer_id FROM orders WHERE order_date BETWEEN '1997/01/01' AND '1997/12/31');

/*4 Pedidos (company_name, order_id, order_date) donde haya Konbu*/
SELECT *
FROM orderDetails
INNER JOIN products
WHERE product_name = 'Konbu';

/*Otra forma de resolver el ejercicio 4*/
SELECT orderdetails.*, products.product_name
FROM orderdetails
INNER JOIN products
WHERE product_name = "Konbu";
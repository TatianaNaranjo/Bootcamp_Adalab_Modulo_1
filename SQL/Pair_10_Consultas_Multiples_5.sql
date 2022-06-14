USE Northwind;

/*1 order_date max de cada empleado*/
SELECT *
FROM orders AS o1
WHERE order_date = (SELECT MAX(order_date) FROM orders AS o2 WHERE o1.order_id = o2.order_id)
ORDER BY order_date desc;

/*2 unitPrice de cada producto vendido*/
SELECT unit_price, quantity, product_id
FROM orderdetails
ORDER BY quantity desc;

/*3 company_name, city, contact_name de empresas que vivan en ciudades que empiezan por A o B*/
SELECT company_name, city, contact_name
FROM customers
WHERE city
LIKE 'A%';

SELECT company_name, city, contact_name
FROM customers
WHERE city
LIKE 'B%';

/*4 nº pedidos en ciudades que empiezan por L*/
SELECT ship_city, order_id
FROM orders
WHERE ship_city
LIKE 'L%';
USE Northwind;

/*1 pedidos por empresa en UK; ProductID y nombre de empresa*/
SELECT customers.company_name, COUNT(orders.order_id)
FROM orders
INNER JOIN customers ON orders.customer_id = customers.customer_id
WHERE customers.country = 'UK'
GROUP BY customers.company_name;

/*2 productos pedidos por empresa en UK por año*/
SELECT customers.company_name, YEAR(orders.order_date) as año, COUNT(orderdetails.quantity)
FROM orders
INNER JOIN customers ON orders.customer_id = customers.customer_id
INNER JOIN orderdetails ON orders.order_id = orderdetails.order_id
WHERE customers.country = 'UK'
GROUP BY customers.company_name, YEAR(orders.order_date);

/*3 =2 con cantidad de dinero (+descuentos)*/
SELECT customers.company_name, YEAR(orders.order_date) as año, SUM(orderdetails.unit_price * Quantity - Discount), COUNT(orderdetails.quantity)
FROM orders
INNER JOIN customers ON orders.customer_id = customers.customer_id
INNER JOIN orderdetails ON orders.order_id = orderdetails.order_id
WHERE customers.country = 'UK'
GROUP BY customers.company_name, YEAR(orders.order_date), COUNT(orderdetails.quantity);


USE Northwind;
/*1 Datos trabajadores*/
SELECT EmployeeID, LastName, FirstName
FROM Employees;

/*2 Precios más bajos*/ 
SELECT UnitPrice
FROM Products
WHERE UnitPrice < "5";

/*3 Precio 18,19,20 dólares*/
SELECT ProductName
FROM Products
WHERE UnitPrice = "18"
or UnitPrice = "19"
OR UnitPrice = "20";

/*4 precio >=15 ó <=50 dólares*/
SELECT UnitPrice
FROM Products
WHERE UnitPrice <= "50"
AND UnitPrice >= "15";

/*5 Productos SIN precio*/
SELECT * 
FROM Products
WHERE UnitPrice is NULL;

/*6 Precio menor a 15 cn ID menor que 10*/
SELECT *
FROM Products
WHERE ProductID <= "10"
AND UnitPrice <= "15";

/*7 Productos CON precio*/
SELECT *
FROM Products 
WHERE UnitPrice is NOT NULL;

/*8 Países a los que vendemos*/
SELECT ShipCountry
FROM Orders;
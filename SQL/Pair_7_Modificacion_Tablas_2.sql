USE tienda_zapatillas;

/* Añadir datos a zapatillas*/
INSERT INTO zapatillas (idzapatillas, modelo, talla, color, marca)
VALUES (1, 'XQYUN', 42, 'negro', 'Nike'),
(2, 'XQYUN', 39, 'rosas', 'Nike'),
(3, 'XQYUN', 35, 'verdes', 'Adidas');

SELECT *
FROM zapatillas;

INSERT INTO empleados (nombre, tienda, salario, fecha_incorporacion)
VALUES ('Laura', 'Alcobendas', '25987', '2010/09/03'),
('María', 'Sevilla', '0', '2001/04/11'),
('Ester', 'Oviedo', '30165.98','2000/11/29');

INSERT INTO clientes (idcliente, nombre, numero_telefono, email, direccion, ciudad, provincia, codigo_postal)
VALUES (1, 'Monica', '1234567289', 'monica@email.com 
', 'Calle Felicidad', 'Móstoles', 'Madrid', '28176'),
(2, 'Lorena', '289345678', 'lorena@email.com
', 'Calle Alegria', 'Barcelona', 'Barcelona', '12346'),
(3, 'Carmen', '298463759', 'carmen@email.com
','Calle del Color', 'Vigo', 'Pontevedra', '23456');

-- Error en el nº teléfono del primer cliente --

INSERT INTO facturas (idfactura, numero_factura, idempleado, idcliente, idzapatillas, fecha, total)
VALUES (1, 123, 2, 1, 1, '2001/12/11', 54.98),
(2, 1234, 1, 3, 1, '2005/05/23', 89.91),
(3, 12345, 3, 3, 2, '2015/09/18', 76.23);

/* Actualizar errores*/
UPDATE zapatillas
SET color = 'amarillo'
WHERE idzapatillas = 2;

UPDATE empleados
SET tienda = 'A Coruña'
WHERE nombre = 'Laura';

UPDATE clientes
SET numero_telefono = 123456728
WHERE idcliente = 1;

UPDATE facturas
SET total = '89.91'
WHERE idzapatillas = 2;


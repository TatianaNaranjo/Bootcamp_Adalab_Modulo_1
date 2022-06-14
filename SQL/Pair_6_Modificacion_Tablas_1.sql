USE tienda_zapatillas;

-- Introducir marca en zapatillas --
ALTER TABLE zapatillas
ADD marca VARCHAR (45) NOT NULL;
-- Se pedía añadir talla pero ya existía --

-- Añadir salario en empleados --
ALTER TABLE empleados
MODIFY salario FLOAT NOT NULL;

-- Eliminar columna Pais y cambiar codigo postal a str VARCHAR (5) --
ALTER TABLE clientes
DROP pais;

ALTER TABLE clientes
MODIFY codigo_postal INT (5) NOT NULL;

-- Añadir 'total' a facturas --
ALTER TABLE facturas
ADD total FLOAT NOT NULL;



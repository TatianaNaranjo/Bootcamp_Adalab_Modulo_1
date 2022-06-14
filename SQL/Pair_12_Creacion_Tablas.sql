CREATE SCHEMA tienda_zapatillas; 
USE tienda_zapatillas;

-- EMPLEADOS --
CREATE TABLE empleados
(idempleado INT NOT NULL AUTO_INCREMENT,
nombre VARCHAR (45) NOT NULL,
tienda VARCHAR (45) NOT NULL,
salario FLOAT DEFAULT NULL,
fecha_incorporacion DATE NOT NULL,
PRIMARY KEY (idempleado));


-- CLIENTES --
CREATE TABLE clientes
(idcliente INT NOT NULL AUTO_INCREMENT,
nombre VARCHAR(45) NOT NULL,
numero_telefono VARCHAR (9) NOT NULL,
email VARCHAR (45) DEFAULT NULL,
direccion VARCHAR(45) NOT NULL,
ciudad VARCHAR (45) DEFAULT NULL, 
provincia VARCHAR (45) NOT NULL,
pais VARCHAR (45) NOT NULL,
codigo_postal INT (5) NOT NULL,
PRIMARY KEY (idcliente));

-- FACTURAS --
DROP TABLE facturas;
CREATE TABLE facturas
(idfactura INT NOT NULL AUTO_INCREMENT,
numero_factura VARCHAR(45) NOT NULL,
idempleado INT NOT NULL,
idcliente INT NOT NULL,
idzapatillas INT DEFAULT NULL,
fecha DATE NOT NULL,
PRIMARY KEY (idfactura),
FOREIGN KEY (idempleado) REFERENCES empleados(idempleado),
FOREIGN KEY (idzapatillas) REFERENCES zapatillas(idzapatillas),
FOREIGN KEY (idcliente) REFERENCES clientes(idcliente)
);

DROP TABLE zapatillas;
--  ZAPATILLAS --
CREATE TABLE zapatillas
(idzapatillas INT NOT NULL AUTO_INCREMENT,
modelo VARCHAR(45) NOT NULL,
talla INT NOT NULL,
color VARCHAR (45) NOT NULL,
PRIMARY KEY (idzapatillas)
);

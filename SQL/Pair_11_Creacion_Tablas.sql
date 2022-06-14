-- Ejercicio 1:

CREATE TABLE zapatillas
(id_zapatilla INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
modelo VARCHAR(45) NOT NULL,
talla INT NOT NULL,
color VARCHAR(45) NOT NULL);

-- Ejercicio 2:

CREATE TABLE clientes
(id_cliente INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(45) NOT NULL,
numero_telefono INT(9) NOT NULL,
email VARCHAR(45) NOT NULL,
direccion VARCHAR(45) NOT NULL,
ciudad VARCHAR(45) DEFAULT NULL,
provincia VARCHAR(45) NOT NULL,
pais VARCHAR(45) NOT NULL,
codigo_postal INT(5) NOT NULL);

-- Ejercicio 3:

CREATE TABLE empleados
(id_empleado INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(45) NOT NULL,
tienda VARCHAR(45) NOT NULL,
salario FLOAT DEFAULT NULL,
fecha_incorporacion DATE NOT NULL);

-- Ejercicio 4:
CREATE TABLE facturas
(id_factura INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
numero_factura VARCHAR(45) NOT NULL,
id_empleado INT NOT NULL,
FOREIGN KEY (id_empleado) REFERENCES empleados (id_empleado),
id_cliente INT NOT NULL,
FOREIGN KEY (id_cliente) REFERENCES clientes (id_cliente),
id_zapatilla INT NOT NULL,
FOREIGN KEY (id_zapatilla) REFERENCES zapatillas (id_zapatilla),
fecha DATE NOT NULL,
total FLOAT NOT NULL);



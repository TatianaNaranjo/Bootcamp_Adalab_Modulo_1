-- Ejercicio 1:

ALTER TABLE zapatillas ADD COLUMN marca VARCHAR(45) NOT NULL;

-- Ejercicio 2:
ALTER TABLE empleados MODIFY salario FLOAT NOT NULL;

-- Ejercicio 3:

ALTER TABLE clientes DROP COLUMN pais;
ALTER TABLE clientes MODIFY codigo_postal INT(5);


-- Ejercicio 4: 
ALTER TABLE facturas ADD COLUMN total FLOAT DEFAULT NULL;


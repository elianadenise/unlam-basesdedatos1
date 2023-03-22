create database holamundo; # ejecutar con rayito
show databases; # seleccionar y ejecutar con rayito
use holamundo; # base de datos que vamos a utilizar, seleccionar y ejecutar con rayito
CREATE TABLE animales (
	id int, # tipo de dato para los ids
    tipo varchar(255), # en parentesis la cantidad de caracteres maximo
	estado varchar(255),
    PRIMARY KEY (id)
); # seleccionar toda create table y ejecutar con rayito

# insertar datos en la tabla
-- INSERT INTO animales(tipo, estado) VALUES ('vaca', 'feliz'); # seleccionar y ejecutar
# ctrl + enter para ejecutar automaticamente

# modificar tabla que ha sido creada
# estos comandos pueden ponerse al crearse la tabla
ALTER TABLE animales MODIFY COLUMN id int auto_increment; # seleccionar y ejecutar

SHOW CREATE TABLE animales;
CREATE TABLE `animales` ( # esto es una copia de lo que devuelve el show create table
  `id` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(255) DEFAULT NULL, # valor por defecto va a ser null
  `estado` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO animales(tipo, estado) VALUES ('vaca', 'feliz');
INSERT INTO animales(tipo, estado) VALUES ('caballo', 'feliz');
INSERT INTO animales(tipo, estado) VALUES ('Aurelio', 'triste');

# seleccionar la tabla para ver el listado
# de esta forma se seleccionan todas las columnas de la tabla animales
SELECT * FROM animales; # seleccionar y ejecutar
SELECT * FROM animales WHERE id = 1; # seleccionar todas las columnas donde el id sea 1
SELECT * FROM animales WHERE estado = 'feliz';
SELECT * FROM animales WHERE estado = 'feliz' AND tipo = 'caballo';

# actualizar datos - pasa el estado de triste a feliz
UPDATE animales SET estado = 'feliz' where id = 4; # siempre se pide el id
SELECT * FROM animales;

# eliminar registros
DELETE from animales where estado = 'feliz';
#Error Code: 1175. You are using safe update mode and you tried to update a table without a WHERE that uses a KEY column.  To disable safe mode, toggle the option in Preferences -> SQL Editor and reconnect.
# quiere decir que no se puede eliminar por condicion. 
# usersiempre para eliminar se pide un id

DELETE from animales where id = 3;
SELECT * FROM animales;
# quede en condiciones en profundidad


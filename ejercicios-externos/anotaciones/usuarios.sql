# TABLA DE  U S U A R I O S
use holamundo; # poner que base de datos usar
CREATE TABLE usuario (
	id int null auto_increment,
    name varchar(50) not null,
    edad int not null,
    email varchar(100) not null,
    primary key (id)
);

INSERT INTO usuario (name, edad, email) values ('Eliana', 24, 'elo@gmail.com');
INSERT INTO usuario (name, edad, email) values ('Lara', 15, 'lari@gmail.com');
INSERT INTO usuario (name, edad, email) values ('Maximiliano', 28, 'maxi@gmail.com');
INSERT INTO usuario (name, edad, email) values ('Milucha', 9, 'milu@gmail.com');

# seleccion de columnas
select * from usuario;
select * from usuario limit 1; # limita la busqueda y devuelve el primer registro que encuentra
select * from usuario where edad > 20;
select * from usuario where edad >= 15;
select * from usuario where edad > 20 and email = 'elo@gmail.com';
select * from usuario where edad > 20 or email = 'milu@gmail.com';
select * from usuario where email != 'milu@gmail.com';
select * from usuario where edad between 15 and 30;
select * from usuario where email like '%gmail%'; # lo que venga adelante y atras no importa
select * from usuario where email like '%gmail'; # lo que venga a delante no importa, pero el final tiene que terminar ahi, con la l de gmail, en este caso va a dar null
select * from usuario where email like 'maxi%';

select * from usuario order by edad asc;
select * from usuario order by edad desc;

select max(edad) as mayor from usuario;
select min(edad) as menor from usuario;

select id, name from usuario;
select id, name as nombre from usuario;

# renombrar tabla
rename table usuario to user;
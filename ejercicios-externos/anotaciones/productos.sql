use holamundo;
create table products (
	id int not null auto_increment,
    name varchar(50) not null,
    created_by int not null,
    marca varchar(50) not null,
    primary key(id),
    foreign key(created_by) references usuario(id)
);

# renombrar tabla
rename table products to product;

# insertar datos en conjunto
insert into product (name, created_by, marca)
values
	('arroz', 1, 'gallo oro'),
    ('yogurisimo', 2, 'la serenisima'),
    ('salsa de tomate', 4, 'salsati'),
    ('cacao en polvo', 2, 'nesquik'),
    ('spaghetti', 4, 'matarazzo');

select * from product;

# L E F T  J O I N
# union de tablas product - user
select u.id, u.name, p.name from user u left join product p on u.id = p.created_by; 
# u es el alias que le ponemos a user para que no se haga tan largo
# p es el alias que le ponemos a product para que no se haga tan largo
# este comando une las tablas por terminal de la consulta dada
# aca muestra todos los registros de usuarios, por mas que no hayan creado ningun producto
# retorna la tabla usuario y su relacion con producto

# R I G H T  J O I N
select u.id, u.name, p.name from user u right join product p on u.id = p.created_by; 
# aca muestra los usuarios que han creado productos con los productos
# retorna la tabla de producto que se realaciona con usuario

# I N N E R  J O I N
# retorna la interseccion de las dos tablas
select u.id, u.name, p.name from user u inner join product p on u.id = p.created_by; 

# C R O S S  J O I N
# registro cartesiano entre las dos tablas ??
select u.id, u.name, p.id, p.name from user u cross join product p;

# G R O U P  B Y
select count(id) marca from product group by marca;
select count(p.id), u.name from product p left join user u on u.id = p.created_by group by p.created_by;
# muestra cuantos productos fueron creados por cada usuario

# H A V I N G
select count(p.id), u.name from product p left join user u
 on u.id = p.created_by group by p.created_by
 having count(p.id) >= 3;
# muestra a quienes han hecho mas de 2 cargas de productos

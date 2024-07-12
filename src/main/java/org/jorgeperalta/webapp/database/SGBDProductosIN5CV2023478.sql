drop database SGBDProductosIN5CV2023478;

create database SGBDProductosIN5CV2023478;

use SGBDProductosIN5CV2023478;

create table Productos(
	productoId int not null auto_increment,
    nombreProducto varchar(40) not null,
    marcaProducto varchar(40),
    descripcionProducto text,
    precio decimal(10,2),
    primary key PK_productoId(productoId)
);

insert into Productos (nombreProducto, marcaProducto, descripcionProducto, precio) values
	('Limon', 'Limones YA', 'Rico Limon', 2.50),
    ('Salsa', 'Maggi', 'Salsa de Tomate', 12.30),
    ('Desodorante', 'Nivea', 'Desodorante a olor a pino', 30.10),
    ('Pollo', 'Pollo Rey', 'Pollo Congelado', 35.90);
    
select * from Productos;


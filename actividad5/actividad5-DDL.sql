drop database Almacenes;

create database Almacenes;
use Almacenes;

CREATE TABLE almacenes (
	cod_almacen int auto_increment, 
	lugar nvarchar(100), 
	capacidad int,
    primary key (cod_almacen)
);
CREATE TABLE Cajas (
	num_referencia char(5), 
	contenido nvarchar(100), 
	valor int, 
	almacen  int,
    primary key(num_referencia),
    foreign key (almacen) references almacenes (cod_almacen)
		on update cascade
		on delete cascade
);
drop database Tienda_Informatica;

create database Tienda_Informatica;
use Tienda_Informatica;

CREATE TABLE Fabricantes (
	cod_fabricante int auto_increment, 
	nombre nvarchar(100),
	primary key (cod_fabricante)
);

CREATE TABLE Articulos(
	cod_articulo int auto_increment, 
	nombre nvarchar(100), 
	precio int, 
	fabricante int,
	primary key (cod_articulo),
    foreign key (fabricante) references Fabricantes (cod_fabricante)
		on update cascade
        on delete cascade
);

drop database Piezas_Proveedores;

create database Piezas_Proveedores;
use Piezas_Proveedores;

CREATE TABLE Piezas (
	cod_pieza int auto_increment, 
	nombre nvarchar(100),
    primary key (cod_pieza)
);
CREATE TABLE Proveedores (
	id_proveedor char(4), 
	nombre nvarchar(100),
    primary key (id_proveedor)
);
CREATE TABLE Suministra (
	cod_pieza int, 
	id_proveedor char(4), 
	precio int,
    primary key (cod_pieza, id_proveedor),
    foreign key (cod_pieza) references Piezas (cod_pieza)
		on update cascade
        on delete cascade,
	foreign key (id_proveedor) references Proveedores (id_proveedor)
		on update cascade
        on delete cascade
);
drop database grandes_almacenes;

create database grandes_almacenes;
use grandes_almacenes;

CREATE TABLE productos (
	cod_producto int auto_increment,
	nombre nvarchar(100), 
	precio int,
    primary key(cod_producto)
);
CREATE TABLE cajeros (
	cod_cajero int auto_increment, 
	nom_apels nvarchar(255),
    primary key (cod_cajero)
);
CREATE TABLE maquinas_registradoras (
	cod_maquina_registradora int auto_increment,  
	piso int,
    primary key(cod_maquina_registradora)
);
CREATE TABLE venta (
	cajero int, 
	maquina int, 
	producto int,
    primary key (cajero, maquina, producto),
    foreign key (cajero) references cajeros (cod_cajero)
		on delete cascade
        on update cascade,
	foreign key (maquina) references maquinas_registradoras (cod_maquina_registradora)
		on delete cascade
        on update cascade,
	foreign key (producto) references productos (cod_producto)
		on delete cascade
        on update cascade
);

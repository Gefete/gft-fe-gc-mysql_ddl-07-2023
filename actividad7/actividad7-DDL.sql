drop database Directores;

create database Directores;
use Directores;

CREATE TABLE Despachos (
	numero int auto_increment, 
	capacidad int,
    primary key (numero)
);
CREATE TABLE Directores (
	dni varchar(8), 
	nom_apels nvarchar(255), 
	dni_jefe varchar(8), 
	despacho int,
    primary key (dni),
    foreign key (dni_jefe) references Directores (dni)
		on delete cascade
        on update cascade,
	foreign key (despacho) references Despachos (numero)
		on delete cascade
        on update cascade
);
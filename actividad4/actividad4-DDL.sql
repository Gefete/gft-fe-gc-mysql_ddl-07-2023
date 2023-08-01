drop database Empleados;

create database Empleados;
use Empleados;

CREATE TABLE Departamentos (
	cod_departamento int auto_increment, 
	nombre nvarchar(100), 
	presupuesto int,
    primary key (cod_departamento)
);
CREATE TABLE Empleados (
	dni varchar(8), 
    nombre nvarchar(100), 
    apellidos nvarchar(255), 
    departamento int,
    primary key (dni),
    foreign key (departamento) references Departamentos (cod_departamento)
		on delete cascade
        on update cascade
);
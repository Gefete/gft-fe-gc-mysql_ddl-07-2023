drop database curso_educativo;

create database curso_educativo;
use curso_educativo;

CREATE TABLE profesores (
	dni varchar(13), 
	direccion varchar(255), 
	nombre varchar(100) not null, 
	apellido varchar(100) not null, 
	apellido2 varchar(100), 
	titulo varchar(100), 
	gana float not null,
    primary key(dni),
    unique (nombre, apellido)
);
CREATE TABLE cursos (
	cod_curso int, 
	nombre varchar(100), 
	max_alumnos int, 
	fecha_inicio date, 
	fecha_fin date, 
    horas int not null, 
	dni_profesor varchar(13),
    primary key(cod_curso),
    unique (nombre),
    foreign key (dni_profesor) references profesores (dni)
		on delete cascade
        on update cascade,
	/* Comprueba que las fechas se crean cronologicamente correcto */
	CONSTRAINT chk_fechas CHECK (fecha_inicio <= fecha_fin)
);
CREATE TABLE alumnos (
	dni varchar(13), 
	direccion varchar(255), 
	nombre varchar(100), 
	apellido varchar(100), 
	apellido2 varchar(100), 
	sexo enum('H','M'), 
	fecha_nacimiento date, 
	cod_curso int,
    primary key(dni),
	foreign key (cod_curso) references cursos (cod_curso)
		on delete cascade
        on update cascade
);


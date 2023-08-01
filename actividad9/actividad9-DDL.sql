drop database Cientificos;

create database Cientificos;
use Cientificos;

CREATE TABLE cientificos (
	dni varchar(8), 
	nom_apels nvarchar(255),
    primary key(dni)
);
CREATE TABLE proyecto (
	id_proyecto char(4), 
	nombre nvarchar(255), 
	horas int,
    primary key(id_proyecto)
);
CREATE TABLE Asignado_A (
	cientifico varchar(8), 
	proyecto char(4),
    primary key(cientifico, proyecto),
    foreign key (cientifico) references cientificos (dni)
		on delete cascade
        on update cascade,
	foreign key (proyecto) references proyecto (id_proyecto)
		on delete cascade
        on update cascade
);
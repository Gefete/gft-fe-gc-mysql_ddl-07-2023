drop database investigadores;

create database investigadores;
use investigadores;

CREATE TABLE Facultad (
	cod_facultad int, 
	nombre nvarchar(100),
	primary key (cod_facultad)
);
CREATE TABLE Investigadores (
	dni varchar(8), 
	nom_apels nvarchar(255), 
	facultad int,
    primary key(dni),
    foreign key (facultad) references Facultad (cod_facultad)
		on delete cascade
        on update cascade
);
CREATE TABLE Equipos (
	num_serie char(4), 
	nombre nvarchar(100), 
	facultad int,
    primary key(num_serie),
    foreign key (facultad) references Facultad (cod_facultad)
		on delete cascade
        on update cascade
);
CREATE TABLE Reserva (
	dni varchar(8), 
	num_serie char(4), 
	comienzo date, 
	fin date,
    primary key(dni, num_serie),
    foreign key (dni) references Investigadores (dni)
		on delete cascade
        on update cascade,
	foreign key (num_serie) references Equipos (num_serie)
		on delete cascade
        on update cascade
);

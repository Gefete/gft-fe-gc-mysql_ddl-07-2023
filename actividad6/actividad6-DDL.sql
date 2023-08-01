drop database Peliculas_salas;

create database Peliculas_salas;
use Peliculas_salas;

CREATE TABLE peliculas (
	cod_pelicula  int auto_increment, 
	nombre  nvarchar(100), 
	calificacion_edad  int,
    primary key (cod_pelicula)
);
CREATE TABLE salas (
	cod_sala  int auto_increment, 
	nombre nvarchar(100), 
	pelicula  int,
    primary key (cod_sala),
    foreign key (pelicula) references peliculas (cod_pelicula) 
		on delete cascade
        on update cascade
);
drop database ejercicio1;

create database ejercicio1;
use ejercicio1;

CREATE TABLE estacion (
	identificador int auto_increment,
    latitud float,
    longitud float,
    altitud float,
    primary key(identificador)
);

CREATE TABLE muestra(
	identificador_estacion int,
    fecha date,
    temp_min float,
    temp_max float,
    precipitaciones boolean,
    humedad_min float,
    humedad_max float,
    vel_viento_min float,
    vel_viento_max float,
    foreign key (identificador_estacion) references estacion (identificador)
);
drop database ejercicio2;

create database ejercicio2;
use ejercicio2;

CREATE TABLE tema (
	clave_tema smallint,
    nombre varchar(40),
    primary key (clave_tema)
);
CREATE TABLE autor (
	clave_autor int,
    nombre varchar(60),
    primary key (clave_autor)
);
CREATE TABLE editorial (
	clave_editorial smallint,
    nombre varchar(60),
    direccion varchar(60),
    telefono varchar(15),
    primary key (clave_editorial)
);
CREATE TABLE libro (
	clave_libro int,
    titulo varchar(60),
    idioma varchar(15),
    formato  varchar(15),
    clave_editorial smallint,
    primary key (clave_libro),
    foreign key (clave_editorial) references editorial (clave_editorial)
		on delete cascade
        on update cascade
);
CREATE TABLE ejemplar (
	clave_ejemplar int,
    clave_libro int,
    num_orden smallint,
    edicion smallint,
    ubicacion varchar(15),
    categoria char,
    primary key (clave_ejemplar),
    foreign key (clave_libro) references libro (clave_libro)
		on delete cascade
		on update cascade
);
CREATE TABLE socio (
	clave_socio int,
    nombre varchar(60),
    direccion varchar(60),
    telefono varchar(15),
    categoria char,
    primary key (clave_socio)
);

CREATE TABLE prestamo (
	clave_socio int,
    clave_ejemplar int,
    num_orden smallint,
    fecha_prestamo date,
    fecha_devolucion date,
    notas blob,
    primary key (clave_socio, clave_ejemplar),
    foreign key (clave_socio) references socio (clave_socio)
		on delete cascade
        on update cascade,
    foreign key (clave_ejemplar) references ejemplar (clave_ejemplar)
		on delete cascade
        on update cascade
);
CREATE TABLE trata_sobre (
	clave_libro int,
    clave_tema smallint,
    primary key (clave_libro, clave_tema),
    foreign key (clave_libro) references libro (clave_libro)
		on delete cascade
        on update cascade,
    foreign key (clave_tema) references tema (clave_tema)
		on delete cascade
        on update cascade
);
CREATE TABLE escrito_por (
	clave_libro int,
    clave_autor int,
	primary key (clave_libro, clave_autor),
    foreign key (clave_libro) references libro (clave_libro)
		on delete cascade
        on update cascade,
	foreign key (clave_autor) references autor (clave_autor)
		on delete cascade
        on update cascade
);

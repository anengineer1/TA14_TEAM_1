CREATE DATABASE biblioteca;

USE biblioteca;

CREATE TABLE editorial(
claveeditorial smallint NOT NULL,
nombre VARCHAR (60),
direccion varchar (60),
telefono varchar (15),
primary key(claveeditorial)
);

CREATE TABLE Libro(
claveLibro INT NOT NULL,
titulo varchar (60),
idioma varchar(15),
formato varchar(15),
claveeditorial SMALLINT,
primary key(claveLibro),
key(claveeditorial),
foreign key (claveeditorial)
references editorial(claveeditorial)
ON delete set null
on update cascade
);

create table tema(
clavetema SMALLINT NOT NULL,
nombre varchar(40),
primary key (clavetema)
);

create table autor(
claveautor int not null,
nombre varchar(40),
primary key (claveautor)
);

create table ejemplar(
claveejemplar int not null,
clavelibro int not null,
numeroorden smallint not null,
edicion smallint,
ubicacion varchar(20),
categoria CHAR,
primary key (claveejemplar),
foreign key (clavelibro)
references libro(clavelibro)
on delete cascade
on update cascade
);

create table socio (
clavesocio int not null,
nombre varchar(40),
direccion varchar(20),
telefono varchar(20),
categoria CHAR,
primary key(clavesocio)
);

create table prestamo(
clavesocio int,
claveejemplar int,
numeroorden smallint,
fecha_prestamo date not null,
fecha_devolucion date not null,
notas BLOB,
foreign key (clavessocio)
references socio(clavesocio)
on delete set null
on update cascade
);

create table trata_sobre(
clavelibro int not null,
clavetema smallint not null,
foreign key (clavelibro)
references libro(clavelibro)
on delete cascade
on update cascade,
foreign key (clavetema)
references tema(clavetema)
on delete cascade
on update cascade
);

create table escrito_por(
clavelibro int not null,
claveautor int not null,
foreign key (clavelibro)
references libro(clavelibro)
on delete cascade 
on update cascade,
foreign key (clavautor)
references autor(claveautor)
on delete cascade
on update cascade
);
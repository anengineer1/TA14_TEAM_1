CREATE DATABASE cientificos;

USE cientificos;

create table cientificos(
DNI varchar (8),
NomApels nvarchar(255)
);

create table proyecto(
ID char(4),
Nombre nvarchar (255),
Horas int
);

create table Asignado_a(
cientifico varchar(8),
proyecto char(4),
primary key (cientifico),
key (cientifico),
foreign key (cientifico)
references cientifico,
primary key (proyecto),
key (proyecto),
foreign key(proyecto)
references proyecto
);


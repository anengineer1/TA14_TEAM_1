CREATE DATABASE cientificos;

USE cientificos;

create table cientificos(
DNI varchar (8),
NomApels nvarchar(255),
primary key (DNI)
);

create table proyecto(
ID char(4),
Nombre nvarchar (255),
Horas int,
primary key (ID)
);

create table Asignado_a(
cientifico varchar(8),
proyecto char(4),
key (cientifico),
foreign key (cientifico)
references cientificos (DNI)
on delete no action on update cascade,
key (proyecto),
foreign key(proyecto)
references proyecto (ID)
on delete no action
on update cascade,
primary key (cientifico, proyecto)
);

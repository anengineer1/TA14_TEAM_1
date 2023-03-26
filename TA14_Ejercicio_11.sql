CREATE DATABASE investigadores;

USE investigadores;

create table facultad(
codigo int,
nombre varchar(100),
primary key (codigo)
);

create table investigadores (
DNI varchar(9),
NumApels nvarchar(255),
Facultad int,
primary key (DNI),
foreign key (facultad)
references facultad(codigo)
on delete set null
on update cascade
);

create table reserva(
DNI varchar(8),
NumSerie char(4),
Comienzo datetime,
Fin datetime
);

create table equipos(
NumSerie char(4),
Nombre nvarchar(100),
Facultad int,
primary key(NumSerie),
foreign key (facultad)
references facultad(codigo)
on delete cascade
on update cascade
);
SELECT * from equipos;
select * from reserva;
select * from investigadores;

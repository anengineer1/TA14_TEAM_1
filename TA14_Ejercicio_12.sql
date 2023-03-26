CREATE DATABASE BD_alumnos;

USE BD_alumnos;


create table profesores(
Nombre varchar (10) UNIQUE,
apellido1 varchar(10),
apellido2 varchar(10),
DNI varchar (15),
direccion varchar (20),
titulacion varchar(10),
cuota_hora int,
gana int NOT NULL,
primary key (DNI)
);

create table curso (
nombre varchar(10) UNIQUE,
codigo_unico int,
nMaximo_alumnos_recomendado int,
profesor varchar(10),
fecha_inicio datetime,
fecha_final datetime,
NHorasCurso int not null,
foreign key (profesor)
references profesor (DNI),
primary key (codigo_unico),
check (fecha_inicio < fecha_final)
);

create table alumnos(
nombre varchar(20),
apellido1 varchar(20),
apellido2 varchar (20),
DNI varchar (10),
codigo_unico int,
direccion varchar (60),
fecha_nacimiento varchar(20),
cod_curso int not null,
foreign key (cod_curso)
references curso(codigo),
sexo char(1) check (sexo='H' OR sexo='M'),
primary key (codigo_unico)
);

select * from curso;
select * from alumnos;
select *from profesores;

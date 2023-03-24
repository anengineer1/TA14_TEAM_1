CREATE DATABASE TA14_Ejercicio_3;

USE TA14_Ejercicio_3;

CREATE TABLE fabricantes (
identificador INT UNSIGNED AUTO_INCREMENT NOT NULL,
PRIMARY KEY (identificador),
nombre NVARCHAR(100)
);

CREATE TABLE articulos (
identificador INT UNSIGNED AUTO_INCREMENT NOT NULL,
identificador_fabricante INT UNSIGNED NOT NULL,
Nombre VARCHAR(100) NOT NULL,
PRIMARY KEY (identificador),
KEY (identificador_fabricante), 
FOREIGN KEY (identificador_fabricante)
REFERENCES fabricantes(identificador) ON DELETE NO ACTION
ON UPDATE CASCADE
);

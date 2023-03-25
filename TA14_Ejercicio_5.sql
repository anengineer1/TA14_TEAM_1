CREATE DATABASE IF NOT EXISTS Ejercicio5;
USE Ejercicio5;

CREATE TABLE IF NOT EXISTS Almacenes(
codigo INT AUTO_INCREMENT, 
lugar NVARCHAR(100) NOT NULL,
capacidad INT,
PRIMARY KEY (codigo));   

CREATE TABLE IF NOT EXISTS Cajas(
NumReferencia CHAR(5), 
contenido NVARCHAR(100),
valor INT NOT NULL, 
id_almacen INT, 
PRIMARY KEY (NumReferencia),
FOREIGN KEY (id_almacen) REFERENCES Almacenes(codigo) ON DELETE CASCADE ON UPDATE CASCADE);
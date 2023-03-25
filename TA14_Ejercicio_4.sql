CREATE DATABASE IF NOT EXISTS Ejercicio4;
USE Ejercicio4;

CREATE TABLE Departamentos(
codigo INT PRIMARY KEY,
nombre NVARCHAR (100) NOT NULL,
presupuesto INT);

CREATE TABLE Empleados(
dni VARCHAR(8) PRIMARY KEY,
nombre NVARCHAR(100) NOT NULL, 
apellidos NVARCHAR(255) NOT NULL,
codigo_departamento INT,
FOREIGN KEY(codigo_departamento) REFERENCES Departamentos (codigo));
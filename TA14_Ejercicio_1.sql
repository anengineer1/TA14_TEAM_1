CREATE DATABASE TA14_Ejercicio_1;

USE TA14_Ejercicio_1;

CREATE TABLE estacion (
identificador MEDIUMINT UNSIGNED AUTO_INCREMENT NOT NULL,
latitud VARCHAR(14) NOT NULL,
longitud VARCHAR(15) NOT NULL,
altitud MEDIUMINT NOT NULL,
PRIMARY KEY (identificador)
);

CREATE TABLE muestra (
identificadorestacion MEDIUMINT UNSIGNED AUTO_INCREMENT NOT NULL,
fecha DATE NOT NULL,
temperaturaminima TINYINT,
temperaturamaxima TINYINT,
precipitaciones SMALLINT UNSIGNED,
humedadminima TINYINT UNSIGNED,
humedadmaxima TINYINT UNSIGNED,
velocidadminima SMALLINT UNSIGNED,
velocidadmaxima SMALLINT UNSIGNED,
KEY (identificadorestacion),
FOREIGN KEY (identificadorestacion)
REFERENCES estacion(identificador) ON DELETE NO ACTION
ON UPDATE CASCADE
);

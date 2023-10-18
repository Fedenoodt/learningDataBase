	CREATE DATABASE EJERCICIO1
COLLATE= `utf8_spanish_ci`;

CREATE TABLE CAMIONEROS(ID_CAMIONERO INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT, DNI INTEGER NOT NULL, NOMBRE VARCHAR(140), TELEFONO VARCHAR(20), DIRECCION VARCHAR(140), SALARIO FLOAT(12), LOCALIDAD VARCHAR(90), ID_PAQUETE INTEGER, ID_CAMION INTEGER);

CREATE TABLE PAQUETES(ID_PAQUETE INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT, DESCRIPCION VARCHAR(140), DESTINATARIO VARCHAR(140));

CREATE TABLE CAMIONES(ID_CAMION INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT, MATRICULA VARCHAR(40) NOT NULL, MODELO VARCHAR(140), TIPO VARCHAR(80), POTENCIA FLOAT(10));

CREATE TABLE PROVINCIAS(ID_PROVINCIA INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT, NOMBRE VARCHAR(140), ID_PAQUETE INTEGER);


ALTER TABLE CAMIONEROS 
ADD FOREIGN KEY (ID_PAQUETE) REFERENCES PAQUETES(ID_PAQUETE);
ALTER TABLE CAMIONEROS
ADD FOREIGN KEY (ID_CAMION) REFERENCES CAMIONES(ID_CAMION);

ALTER TABLE PROVINCIAS
ADD FOREIGN KEY (ID_PAQUETE) REFERENCES PAQUETES(ID_PAQUETE);

INSERT INTO `PAQUETES` (`DESCRIPCION`, `DESTINATARIO`)
VALUES ('Media tonelada de arena', 'Juan Carlos Gomez');
INSERT INTO  `CAMIONES` (`MATRICULA`, `MODELO`, `TIPO`, `POTENCIA`)
VALUES ('1E FRR 074 5T', 'Iveco Eurocargo', 'Carga pesada', 347.76);
INSERT INTO  `CAMIONES` (`MATRICULA`, `MODELO`, `TIPO`, `POTENCIA`)
VALUES ('3D BWQ 593 3F', 'Iveco Daisy', 'Carga pesada', 317.29);
INSERT INTO  `PROVINCIAS` (`NOMBRE`, `ID_PAQUETE`)
VALUES ('Jujuy', 1);
INSERT INTO `CAMIONEROS` (`DNI`, `NOMBRE`, `TELEFONO`, `DIRECCION`, `SALARIO`, `LOCALIDAD`, `ID_PAQUETE`, `ID_CAMION`)
VALUES (41562104, 'Federico Noodt Molins', 5491134509009, 'Felipe Vallese 800', 94300, 'CABA', 1, 2);

drop database if exists TECNOLOGIA;

CREATE DATABASE TECNOLOGIA;

USE  TECNOLOGIA;

CREATE TABLE tipoUsuario(
	idTipoUser INT NOT NULL,
	tipoUser VARCHAR(25),
	PRIMARY KEY (idTipoUser)
);

CREATE TABLE CELULAR(
	correlCelular INT NOT NULL,
	idTipoSO INT not null,
	idTipoSIM INT not null,
	nombreCelular VARCHAR(45) NOT NULL,
	modeloCelular VARCHAR(45) NOT NULL,
	memoriaRAM INT NOT NULL,
	memoriaInterna INT NOT NULL,
	camaraTraseraPx DOUBLE NOT NULL,
	camaraFrontalPx DOUBLE NOT NULL,
	anoLanzamiento INT NOT NULL,
	tieneRanuraMicroSD BOOLEAN NOT NULL,
	precioVenta DOUBLE NOT NULL,
	cantidadInventario INT NOT NULL,
	fechaRegistro DATETIME NOT NULL,
	codUsuario char(8)  NOT NULL,
	PRIMARY KEY (correlCelular)
);

CREATE TABLE USUARIO(
	codUsuario CHAR(8) NOT NULL,
	pass VARCHAR(45)  NOT NULL,
	idTipoUser INT NOT NULL,
	fechaReg DATETIME  NOT NULL,
	PRIMARY KEY (codUsuario)
);


CREATE TABLE tipoSO(
	idTipoSO INT  NOT NULL,
	tipoSO VARCHAR(45) NOT NULL,
	PRIMARY KEY (idTipoSO)
);

CREATE TABLE tipoSIM (
	idTipoSIM INt,
	tipoSIM VARCHAR(25),
	PRIMARY KEY (idTipoSIM)
);



ALTER TABLE USUARIO ADD FOREIGN KEY (idTipoUser) REFERENCES tipoUsuario (idTipoUser);

ALTER TABLE CELULAR ADD	FOREIGN KEY (idTipoSO) REFERENCES tipoSO (idTipoSO);

ALTER TABLE CELULAR ADD	FOREIGN KEY (idTipoSIM)	REFERENCES tipoSIM (idTipoSIM);

ALTER TABLE CELULAR ADD	FOREIGN KEY (codUsuario) REFERENCES USUARIO (codUsuario);

CREATE SCHEMA SEDEPROYECTO;
USE SEDEPROYECTO;

CREATE TABLE SEDE (
    ID VARCHAR(30) PRIMARY KEY,
    PAIS TINYTEXT NOT NULL,
    CIUDAD TINYTEXT NOT NULL,
    DIRECCION VARCHAR(50),
    TLFN VARCHAR(15) UNIQUE NOT NULL DEFAULT '000000000',
    DIRECTOR VARCHAR(30)
);

INSERT INTO SEDE VALUES
(DEFAULT, "ESPANA","GRANADA","UNA CALLE", DEFAULT, NULL );

CREATE TABLE PROYECTO (
	CODIGO TINYTEXT PRIMARY KEY,
    TITULO TINYTEXT,
    F.INICIO DATE,
    F.FIN DATE,
    PRENSA VARCHAR(30),
    RESPONSABLE VARCHAR(50),
    FOREIGN KEY ID_SEDE REFERENCES SEDE(ID),
    CONSTRAINT FECHA_FIN_POSTERIOR CHECK (FECHA_FIN>FECHA_INICIO)
);
    
INSERT INTO PROYECTO VALUES
(DEFAULT, "LO QUE SEA", "2023-10-20", "2024-10-20", DEFAULT, NULL, 1);

SELECT * FROM PROYECTO;
    
CREATE TABLE ACTUACION (
	CODIGO TINYTEXT PRIMARY KEY,
    DESCRIPC TINYTEXT,
    INVERSION INT,
    FOREIGN KEY ID_PROYECTO REFERENCES ID(PROYECTO),
    FOREIGN KEY ID_POBLACION REFERENCES ID(POBLACION)
);

CREATE TABLE POBLACION (
	ID TINYTEXT PRIMARY KEY,
    NOMBRE TINYTEXT,
    PAIS TINYTEXT,
    NHABITANTES INT
);
    


    




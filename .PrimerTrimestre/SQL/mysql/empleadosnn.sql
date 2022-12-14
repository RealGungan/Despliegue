/*empleados n a n */
CREATE DATABASE empleadosnn;
USE empleadosnn;

CREATE TABLE DPTO
(COD_DPTO VARCHAR(4),
NOMBRE VARCHAR(50)) ENGINE = InnoDB;

CREATE TABLE EMPLE
(DNI VARCHAR(9),
NOMBRE VARCHAR(50),
SALARIO FLOAT (8,2),
FECHA_NAC DATE,
COD_DPTO VARCHAR(4))ENGINE = InnoDB;

ALTER TABLE DPTO ADD CONSTRAINT PK_DPTO PRIMARY KEY(COD_DPTO);
ALTER TABLE EMPLE ADD CONSTRAINT PK_EMPLE PRIMARY KEY(DNI);

CREATE TABLE EMPLE_DPTO
(COD_DPTO VARCHAR(4),
DNI VARCHAR(9),
FECHA_INICIO DATE,
FECHA_FIN DATE 
)ENGINE = InnoDB;

ALTER TABLE EMPLE_DPTO ADD CONSTRAINT PK_EMPLE_DEPTO PRIMARY KEY(COD_DPTO,DNI,FECHA_INICIO);
ALTER TABLE EMPLE_DPTO ADD CONSTRAINT KF_EMPLE_DPTO_COD FOREIGN KEY (COD_DPTO) REFERENCES  DPTO(COD_DPTO);
ALTER TABLE EMPLE_DPTO ADD CONSTRAINT KF_EMPLE_DPTO_DNI FOREIGN KEY (DNI) REFERENCES  EMPLE(DNI);

INSERT INTO EMPLE_DPTO (COD_DPTO,DNI,FECHA_INICIO,FECHA_FIN) VALUES ('D001','123456789','2000-01-01','2000-03-03');
INSERT INTO DPTO (COD_DPTO,NOMBRE) VALUES ('D002','NOMINAS');
INSERT INTO EMPLE (DNI,NOMBRE,SALARIO,FECHA_NAC,COD_DPTO) VALUES ('11111111A','ANA','2000','2000-01-01','D001');
INSERT INTO EMPLE (DNI,NOMBRE,SALARIO,FECHA_NAC,COD_DPTO) VALUES ('22222222B','KATY','2000','1970-01-01','D002');
INSERT INTO EMPLE (DNI,NOMBRE,SALARIO,FECHA_NAC,COD_DPTO) VALUES ('33333333C','LAURA','2000','2000-03-03','D003');

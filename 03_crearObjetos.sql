-- Generado por Oracle SQL Developer Data Modeler 4.1.5.907
--   en:        2017-02-13 12:01:29 COT
--   sitio:      Oracle Database 10g
--   tipo:      Oracle Database 10g




DROP
  TABLE Conductor CASCADE CONSTRAINTS ;

DROP
  TABLE Marca CASCADE CONSTRAINTS ;

DROP
  TABLE Vehiculo CASCADE CONSTRAINTS ;

DROP
  TABLE reserva CASCADE CONSTRAINTS ;

CREATE
  TABLE Conductor
  (
    id               NUMBER (2) NOT NULL ,
    nombre           VARCHAR2 (20 CHAR) NOT NULL ,
    calificacion     NUMBER (2) NOT NULL ,
    fecha_nacimiento DATE NOT NULL
  ) ;
COMMENT ON TABLE Conductor
IS
  'Esta es la tabla conductor' ;
  COMMENT ON COLUMN Conductor.id
IS
  'Identificador' ;
  COMMENT ON COLUMN Conductor.nombre
IS
  'Nombre' ;
  COMMENT ON COLUMN Conductor.calificacion
IS
  'Calificación' ;
  COMMENT ON COLUMN Conductor.fecha_nacimiento
IS
  'Fecha de nacimiento' ;
ALTER TABLE Conductor ADD CONSTRAINT Conductor_PK PRIMARY KEY ( id ) ;


CREATE
  TABLE Marca
  (
    id     NUMBER (2) NOT NULL ,
    nombre VARCHAR2 (20 CHAR) NOT NULL
  ) ;
COMMENT ON TABLE Marca
IS
  'Esta es la tabla de marca' ;
  COMMENT ON COLUMN Marca.id
IS
  'Identificador' ;
  COMMENT ON COLUMN Marca.nombre
IS
  'Nombre de la marca' ;
ALTER TABLE Marca ADD CONSTRAINT Marca_PK PRIMARY KEY ( id ) ;


CREATE
  TABLE Vehiculo
  (
    placa    VARCHAR2 (6 CHAR) NOT NULL ,
    modelo   VARCHAR2 (20 CHAR) NOT NULL ,
    color    VARCHAR2 (20 CHAR) NOT NULL ,
    Marca_id NUMBER (2) NOT NULL
  ) ;
COMMENT ON TABLE Vehiculo
IS
  'Tabla de vehiculo' ;
  COMMENT ON COLUMN Vehiculo.placa
IS
  'Placa' ;
  COMMENT ON COLUMN Vehiculo.modelo
IS
  'Modelo' ;
  COMMENT ON COLUMN Vehiculo.color
IS
  'Color' ;
ALTER TABLE Vehiculo ADD CONSTRAINT Vehiculo_PK PRIMARY KEY ( placa ) ;


CREATE
  TABLE reserva
  (
    Conductor_id   NUMBER (2) NOT NULL ,
    Vehiculo_placa VARCHAR2 (6 CHAR) NOT NULL ,
    fecha_reserva  DATE NOT NULL
  ) ;
COMMENT ON COLUMN reserva.fecha_reserva
IS
  'fecha de reserva' ;
ALTER TABLE reserva ADD CONSTRAINT reserva_PK PRIMARY KEY ( Conductor_id,
Vehiculo_placa ) ;


ALTER TABLE reserva ADD CONSTRAINT FK_ASS_2 FOREIGN KEY ( Conductor_id )
REFERENCES Conductor ( id ) ;

ALTER TABLE reserva ADD CONSTRAINT FK_ASS_3 FOREIGN KEY ( Vehiculo_placa )
REFERENCES Vehiculo ( placa ) ;

ALTER TABLE Vehiculo ADD CONSTRAINT Vehiculo_Marca_FK FOREIGN KEY ( Marca_id )
REFERENCES Marca ( id ) ;


-- Informe de Resumen de Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                             4
-- CREATE INDEX                             0
-- ALTER TABLE                              7
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0

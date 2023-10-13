--------------------------------------------------------
-- Archivo creado  - lunes-marzo-08-2021   
--------------------------------------------------------
DROP TABLE "SV_CLIENTES";
DROP TABLE "SV_MARCAS";
DROP TABLE "SV_MODELOS";
DROP TABLE "SV_TIPOSACCIDENTES";
DROP TABLE "SV_TIPOSSEGURO";
DROP TABLE "SV_VEHIC_ACCID";
DROP TABLE "SV_VEHICULOS";
DROP TABLE "PROVINCIAS";
--------------------------------------------------------
--  DDL for Table SV_CLIENTES
--------------------------------------------------------

  CREATE TABLE "SV_CLIENTES" 
   (	"DNI" VARCHAR2(9), 
	"APELLIDOS" VARCHAR2(60), 
	"NOMBRE" VARCHAR2(50), 
	"FECHA_NACIMIENTO" DATE, 
	"SEXO" CHAR(1), 
	"DIRECCION" VARCHAR2(100), 
	"POBLACION" VARCHAR2(50), 
	"IDPROVINCIA" NUMBER(2,0), 
	"TELEFONO" NUMBER(9,0)
   ) ;
--------------------------------------------------------
--  DDL for Table SV_MARCAS
--------------------------------------------------------

  CREATE TABLE "SV_MARCAS" 
   (	"IDMARCA" NUMBER(5,0), 
	"MARCA" VARCHAR2(100)
   ) ;
--------------------------------------------------------
--  DDL for Table SV_MODELOS
--------------------------------------------------------

  CREATE TABLE "SV_MODELOS" 
   (	"IDMODELO" NUMBER(5,0), 
	"IDMARCA" NUMBER(5,0), 
	"MODELO" VARCHAR2(100)
   ) ;
--------------------------------------------------------
--  DDL for Table SV_TIPOSACCIDENTES
--------------------------------------------------------

  CREATE TABLE "SV_TIPOSACCIDENTES" 
   (	"IDACCIDENTE" VARCHAR2(5), 
	"DESCR_ACCID" VARCHAR2(100)
   ) ;
--------------------------------------------------------
--  DDL for Table SV_TIPOSSEGURO
--------------------------------------------------------

  CREATE TABLE "SV_TIPOSSEGURO" 
   (	"IDSEGURO" NUMBER(5,0), 
	"DESCRSEGURO" VARCHAR2(50), 
	"CANTIDAD" NUMBER(8,2)
   ) ;
--------------------------------------------------------
--  DDL for Table SV_VEHIC_ACCID
--------------------------------------------------------

  CREATE TABLE "SV_VEHIC_ACCID" 
   (	"MATRICULA" VARCHAR2(7), 
	"FECHA_ACCIDENTE" DATE, 
	"RESPONSABLE" CHAR(1), 
	"IDACCIDENTE" VARCHAR2(5), 
	"CANTIDAD" NUMBER(8,2)
   ) ;
--------------------------------------------------------
--  DDL for Table SV_VEHICULOS
--------------------------------------------------------

  CREATE TABLE "SV_VEHICULOS" 
   (	"MATRICULA" VARCHAR2(7), 
	"IDMODELO" NUMBER(5,0), 
	"POTENCIA" NUMBER(5,0), 
	"IDSEGURO" NUMBER(5,0), 
	"DNI" VARCHAR2(9)
   ) ;
--------------------------------------------------------
--  DDL for Table PROVINCIAS
--------------------------------------------------------

  CREATE TABLE "PROVINCIAS" 
   (	"IDPROVINCIA" NUMBER(2,0), 
	"PROVINCIA" VARCHAR2(30)
   ) ;
REM INSERTING into SV_CLIENTES
SET DEFINE OFF;
Insert into SV_CLIENTES (DNI,APELLIDOS,NOMBRE,FECHA_NACIMIENTO,SEXO,DIRECCION,POBLACION,IDPROVINCIA,TELEFONO) 
	values ('1A','APELLIDOS1','NOMBRE 1',to_date('10/11/1980','DD/MM/YYYY'),'M','TOLEDO,1','Ciudad Real','13','666111111');
Insert into SV_CLIENTES (DNI,APELLIDOS,NOMBRE,FECHA_NACIMIENTO,SEXO,DIRECCION,POBLACION,IDPROVINCIA,TELEFONO) 
	values ('2A','APELLIDOS2','NOMBRE 2',to_date('10/01/1970','DD/MM/YYYY'),'H','ZARZA,2','ALMAGRO','13','666222222');
Insert into SV_CLIENTES (DNI,APELLIDOS,NOMBRE,FECHA_NACIMIENTO,SEXO,DIRECCION,POBLACION,IDPROVINCIA,TELEFONO) 
	values ('3A','APELLIDOS2','NOMBRE 3',to_date('03/01/1970','DD/MM/YYYY'),'M','MATA,23','LA RODA','2','666333333');
Insert into SV_CLIENTES (DNI,APELLIDOS,NOMBRE,FECHA_NACIMIENTO,SEXO,DIRECCION,POBLACION,IDPROVINCIA,TELEFONO) 
	values ('4A','APELLIDOS3','NOMBRE 4',to_date('04/01/1975','DD/MM/YYYY'),'H','TOLEDO,4','TOMELLOSO','13','666444444');
Insert into SV_CLIENTES (DNI,APELLIDOS,NOMBRE,FECHA_NACIMIENTO,SEXO,DIRECCION,POBLACION,IDPROVINCIA,TELEFONO) 
	values ('5A','APELLIDOS1','NOMBRE 5',to_date('05/01/1980','DD/MM/YYYY'),'H','MATA,5','CIUDAD REAL','13','666555555');
REM INSERTING into SV_MARCAS
SET DEFINE OFF;
Insert into SV_MARCAS (IDMARCA,MARCA) values ('1','SEAT');
Insert into SV_MARCAS (IDMARCA,MARCA) values ('2','FORD');
Insert into SV_MARCAS (IDMARCA,MARCA) values ('3','KIA');
Insert into SV_MARCAS (IDMARCA,MARCA) values ('4','MERCEDES');
REM INSERTING into SV_MODELOS
SET DEFINE OFF;
Insert into SV_MODELOS (IDMODELO,IDMARCA,MODELO) values ('1','1','TOLEDO GT');
Insert into SV_MODELOS (IDMODELO,IDMARCA,MODELO) values ('2','1','IBIZA');
Insert into SV_MODELOS (IDMODELO,IDMARCA,MODELO) values ('3','2','FOCUS');
Insert into SV_MODELOS (IDMODELO,IDMARCA,MODELO) values ('4','1','ARONA Gt 2.0');
Insert into SV_MODELOS (IDMODELO,IDMARCA,MODELO) values ('5','3','CERATO');
Insert into SV_MODELOS (IDMODELO,IDMARCA,MODELO) values ('6','3','CARNIVAL');
REM INSERTING into SV_TIPOSACCIDENTES
SET DEFINE OFF;
Insert into SV_TIPOSACCIDENTES (IDACCIDENTE,DESCR_ACCID) values ('A1','DESCRIPCION ROTO 1');
Insert into SV_TIPOSACCIDENTES (IDACCIDENTE,DESCR_ACCID) values ('A2','DESCRIPCION 2');
Insert into SV_TIPOSACCIDENTES (IDACCIDENTE,DESCR_ACCID) values ('A3','DESCRIPCION 3');
Insert into SV_TIPOSACCIDENTES (IDACCIDENTE,DESCR_ACCID) values ('A4','DESCRIPCION ROTO 4');
Insert into SV_TIPOSACCIDENTES (IDACCIDENTE,DESCR_ACCID) values ('A5','DESCRIPCION 5');
REM INSERTING into SV_TIPOSSEGURO
SET DEFINE OFF;
Insert into SV_TIPOSSEGURO (IDSEGURO,DESCRSEGURO,CANTIDAD) values ('1','OBLIGATORIO','100');
Insert into SV_TIPOSSEGURO (IDSEGURO,DESCRSEGURO,CANTIDAD) values ('2','TODO RIESGO FRANQUICIA 300','200');
Insert into SV_TIPOSSEGURO (IDSEGURO,DESCRSEGURO,CANTIDAD) values ('3','TERCEROS','300');
Insert into SV_TIPOSSEGURO (IDSEGURO,DESCRSEGURO,CANTIDAD) values ('4','TODO RIESGO 100','400');
Insert into SV_TIPOSSEGURO (IDSEGURO,DESCRSEGURO,CANTIDAD) values ('5','TODO RIESGO','500');
REM INSERTING into SV_VEHIC_ACCID
SET DEFINE OFF;
Insert into SV_VEHIC_ACCID (MATRICULA,FECHA_ACCIDENTE,RESPONSABLE,IDACCIDENTE,CANTIDAD) values ('M1',to_date('01/11/2021','DD/MM/YYYY'),'S','A3','1000');
Insert into SV_VEHIC_ACCID (MATRICULA,FECHA_ACCIDENTE,RESPONSABLE,IDACCIDENTE,CANTIDAD) values ('M5',to_date('01/12/2021','DD/MM/YYYY'),'S','A1','2000');
Insert into SV_VEHIC_ACCID (MATRICULA,FECHA_ACCIDENTE,RESPONSABLE,IDACCIDENTE,CANTIDAD) values ('M1',to_date('01/12/2020','DD/MM/YYYY'),'S','A2','3000');
Insert into SV_VEHIC_ACCID (MATRICULA,FECHA_ACCIDENTE,RESPONSABLE,IDACCIDENTE,CANTIDAD) values ('M2',to_date('01/11/2021','DD/MM/YYYY'),'N','A3','4000');
Insert into SV_VEHIC_ACCID (MATRICULA,FECHA_ACCIDENTE,RESPONSABLE,IDACCIDENTE,CANTIDAD) values ('M1',to_date('01/10/2018','DD/MM/YYYY'),'S','A4','5000');
Insert into SV_VEHIC_ACCID (MATRICULA,FECHA_ACCIDENTE,RESPONSABLE,IDACCIDENTE,CANTIDAD) values ('M5',to_date('01/07/2019','DD/MM/YYYY'),'S','A1','6000');
Insert into SV_VEHIC_ACCID (MATRICULA,FECHA_ACCIDENTE,RESPONSABLE,IDACCIDENTE,CANTIDAD) values ('M2',to_date('01/08/2021','DD/MM/YYYY'),'N','A5','7000');
Insert into SV_VEHIC_ACCID (MATRICULA,FECHA_ACCIDENTE,RESPONSABLE,IDACCIDENTE,CANTIDAD) values ('M4',to_date('01/10/2021','DD/MM/YYYY'),'S','A1','8000');
Insert into SV_VEHIC_ACCID (MATRICULA,FECHA_ACCIDENTE,RESPONSABLE,IDACCIDENTE,CANTIDAD) values ('M4',to_date('12/01/2021','DD/MM/YYYY'),'S','A5','2500');
Insert into SV_VEHIC_ACCID (MATRICULA,FECHA_ACCIDENTE,RESPONSABLE,IDACCIDENTE,CANTIDAD) values ('M3',to_date('11/02/2019','DD/MM/YYYY'),'S','A3','4600');
Insert into SV_VEHIC_ACCID (MATRICULA,FECHA_ACCIDENTE,RESPONSABLE,IDACCIDENTE,CANTIDAD) values ('M3',to_date('11/07/2019','DD/MM/YYYY'),'S','A5','5800');
Insert into SV_VEHIC_ACCID (MATRICULA,FECHA_ACCIDENTE,RESPONSABLE,IDACCIDENTE,CANTIDAD) values ('M2',to_date('21/07/2021','DD/MM/YYYY'),'N','A1','2100');
Insert into SV_VEHIC_ACCID (MATRICULA,FECHA_ACCIDENTE,RESPONSABLE,IDACCIDENTE,CANTIDAD) values ('M2',to_date('25/12/2022','DD/MM/YYYY'),'S','A3','3100');
Insert into SV_VEHIC_ACCID (MATRICULA,FECHA_ACCIDENTE,RESPONSABLE,IDACCIDENTE,CANTIDAD) values ('M5',to_date('12/07/2021','DD/MM/YYYY'),'N','A1','4100');
Insert into SV_VEHIC_ACCID (MATRICULA,FECHA_ACCIDENTE,RESPONSABLE,IDACCIDENTE,CANTIDAD) values ('M6',to_date('10/04/2021','DD/MM/YYYY'),'S','A2','1100');
REM INSERTING into SV_VEHICULOS
SET DEFINE OFF;
Insert into SV_VEHICULOS (MATRICULA,IDMODELO,POTENCIA,IDSEGURO,DNI) values ('M1','2','1000','2','1A');
Insert into SV_VEHICULOS (MATRICULA,IDMODELO,POTENCIA,IDSEGURO,DNI) values ('M2','1','2000','1','2A');
Insert into SV_VEHICULOS (MATRICULA,IDMODELO,POTENCIA,IDSEGURO,DNI) values ('M3','5','1500','2','3A');
Insert into SV_VEHICULOS (MATRICULA,IDMODELO,POTENCIA,IDSEGURO,DNI) values ('M4','5','1800','3','1A');
Insert into SV_VEHICULOS (MATRICULA,IDMODELO,POTENCIA,IDSEGURO,DNI) values ('M5','2','2200','4','3A');
Insert into SV_VEHICULOS (MATRICULA,IDMODELO,POTENCIA,IDSEGURO,DNI) values ('M6','4','1500','3','5A');
REM INSERTING into PROVINCIAS
SET DEFINE OFF;
Insert into PROVINCIAS (IDPROVINCIA,PROVINCIA) values ('2','ALBACETE');
Insert into PROVINCIAS (IDPROVINCIA,PROVINCIA) values ('3','ALICANTE/ALACANT');
Insert into PROVINCIAS (IDPROVINCIA,PROVINCIA) values ('4','ALMERÍA');
Insert into PROVINCIAS (IDPROVINCIA,PROVINCIA) values ('1','ARABA/ÁLAVA');
Insert into PROVINCIAS (IDPROVINCIA,PROVINCIA) values ('33','ASTURIAS');
Insert into PROVINCIAS (IDPROVINCIA,PROVINCIA) values ('5','ÁVILA');
Insert into PROVINCIAS (IDPROVINCIA,PROVINCIA) values ('6','BADAJOZ');
Insert into PROVINCIAS (IDPROVINCIA,PROVINCIA) values ('7','BALEARS, ILLES');
Insert into PROVINCIAS (IDPROVINCIA,PROVINCIA) values ('8','BARCELONA');
Insert into PROVINCIAS (IDPROVINCIA,PROVINCIA) values ('48','BIZKAIA');
Insert into PROVINCIAS (IDPROVINCIA,PROVINCIA) values ('9','BURGOS');
Insert into PROVINCIAS (IDPROVINCIA,PROVINCIA) values ('10','CÁCERES');
Insert into PROVINCIAS (IDPROVINCIA,PROVINCIA) values ('11','CÁDIZ');
Insert into PROVINCIAS (IDPROVINCIA,PROVINCIA) values ('39','CANTABRIA');
Insert into PROVINCIAS (IDPROVINCIA,PROVINCIA) values ('12','CASTELLÓN/CASTELLÓ');
Insert into PROVINCIAS (IDPROVINCIA,PROVINCIA) values ('51','CEUTA');
Insert into PROVINCIAS (IDPROVINCIA,PROVINCIA) values ('13','CIUDAD REAL');
Insert into PROVINCIAS (IDPROVINCIA,PROVINCIA) values ('14','CÓRDOBA');
Insert into PROVINCIAS (IDPROVINCIA,PROVINCIA) values ('15','CORUÑA, A');
Insert into PROVINCIAS (IDPROVINCIA,PROVINCIA) values ('16','CUENCA');
Insert into PROVINCIAS (IDPROVINCIA,PROVINCIA) values ('20','GIPUZKOA');
Insert into PROVINCIAS (IDPROVINCIA,PROVINCIA) values ('17','GIRONA');
Insert into PROVINCIAS (IDPROVINCIA,PROVINCIA) values ('18','GRANADA');
Insert into PROVINCIAS (IDPROVINCIA,PROVINCIA) values ('19','GUADALAJARA');
Insert into PROVINCIAS (IDPROVINCIA,PROVINCIA) values ('21','HUELVA');
Insert into PROVINCIAS (IDPROVINCIA,PROVINCIA) values ('22','HUESCA');
Insert into PROVINCIAS (IDPROVINCIA,PROVINCIA) values ('23','JAÉN');
Insert into PROVINCIAS (IDPROVINCIA,PROVINCIA) values ('24','LEÓN');
Insert into PROVINCIAS (IDPROVINCIA,PROVINCIA) values ('27','LUGO');
Insert into PROVINCIAS (IDPROVINCIA,PROVINCIA) values ('25','LLEIDA');
Insert into PROVINCIAS (IDPROVINCIA,PROVINCIA) values ('28','MADRID');
Insert into PROVINCIAS (IDPROVINCIA,PROVINCIA) values ('29','MÁLAGA');
Insert into PROVINCIAS (IDPROVINCIA,PROVINCIA) values ('52','MELILLA');
Insert into PROVINCIAS (IDPROVINCIA,PROVINCIA) values ('30','MURCIA');
Insert into PROVINCIAS (IDPROVINCIA,PROVINCIA) values ('31','NAVARRA');
Insert into PROVINCIAS (IDPROVINCIA,PROVINCIA) values ('32','OURENSE');
Insert into PROVINCIAS (IDPROVINCIA,PROVINCIA) values ('34','PALENCIA');
Insert into PROVINCIAS (IDPROVINCIA,PROVINCIA) values ('35','PALMAS, LAS');
Insert into PROVINCIAS (IDPROVINCIA,PROVINCIA) values ('36','PONTEVEDRA');
Insert into PROVINCIAS (IDPROVINCIA,PROVINCIA) values ('26','RIOJA, LA');
Insert into PROVINCIAS (IDPROVINCIA,PROVINCIA) values ('37','SALAMANCA');
Insert into PROVINCIAS (IDPROVINCIA,PROVINCIA) values ('38','SANTA CRUZ DE TENERIFE');
Insert into PROVINCIAS (IDPROVINCIA,PROVINCIA) values ('40','SEGOVIA');
Insert into PROVINCIAS (IDPROVINCIA,PROVINCIA) values ('41','SEVILLA');
Insert into PROVINCIAS (IDPROVINCIA,PROVINCIA) values ('42','SORIA');
Insert into PROVINCIAS (IDPROVINCIA,PROVINCIA) values ('43','TARRAGONA');
Insert into PROVINCIAS (IDPROVINCIA,PROVINCIA) values ('44','TERUEL');
Insert into PROVINCIAS (IDPROVINCIA,PROVINCIA) values ('45','TOLEDO');
Insert into PROVINCIAS (IDPROVINCIA,PROVINCIA) values ('46','VALENCIA/VALÈNCIA');
Insert into PROVINCIAS (IDPROVINCIA,PROVINCIA) values ('47','VALLADOLID');
Insert into PROVINCIAS (IDPROVINCIA,PROVINCIA) values ('49','ZAMORA');
Insert into PROVINCIAS (IDPROVINCIA,PROVINCIA) values ('50','ZARAGOZA');
--------------------------------------------------------
--  DDL for Index SYS_C008660
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C008660" ON "SV_CLIENTES" ("DNI") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C008662
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C008662" ON "SV_MARCAS" ("IDMARCA") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C008663
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C008663" ON "SV_MODELOS" ("IDMODELO") 
  ;
--------------------------------------------------------
--  DDL for Index PK_SV_TIPOSACCIDENTES
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_SV_TIPOSACCIDENTES" ON "SV_TIPOSACCIDENTES" ("IDACCIDENTE") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C008665
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C008665" ON "SV_TIPOSSEGURO" ("IDSEGURO") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C008671
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C008671" ON "SV_VEHIC_ACCID" ("MATRICULA", "FECHA_ACCIDENTE") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C008666
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C008666" ON "SV_VEHICULOS" ("MATRICULA") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C0012043
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C0012043" ON "PROVINCIAS" ("IDPROVINCIA") 
  ;
--------------------------------------------------------
--  Constraints for Table SV_CLIENTES
--------------------------------------------------------

  ALTER TABLE "SV_CLIENTES" ADD PRIMARY KEY ("DNI")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table SV_MARCAS
--------------------------------------------------------

  ALTER TABLE "SV_MARCAS" ADD PRIMARY KEY ("IDMARCA")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table SV_MODELOS
--------------------------------------------------------

  ALTER TABLE "SV_MODELOS" ADD PRIMARY KEY ("IDMODELO")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table SV_TIPOSACCIDENTES
--------------------------------------------------------

  ALTER TABLE "SV_TIPOSACCIDENTES" ADD CONSTRAINT "PK_SV_TIPOSACCIDENTES" PRIMARY KEY ("IDACCIDENTE")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table SV_TIPOSSEGURO
--------------------------------------------------------

  ALTER TABLE "SV_TIPOSSEGURO" ADD PRIMARY KEY ("IDSEGURO")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table SV_VEHIC_ACCID
--------------------------------------------------------

  ALTER TABLE "SV_VEHIC_ACCID" ADD PRIMARY KEY ("MATRICULA", "FECHA_ACCIDENTE")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table SV_VEHICULOS
--------------------------------------------------------

  ALTER TABLE "SV_VEHICULOS" ADD PRIMARY KEY ("MATRICULA")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table PROVINCIAS
--------------------------------------------------------

  ALTER TABLE "PROVINCIAS" ADD PRIMARY KEY ("IDPROVINCIA")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SV_CLIENTES
--------------------------------------------------------

  ALTER TABLE "SV_CLIENTES" ADD FOREIGN KEY ("IDPROVINCIA")
	  REFERENCES "PROVINCIAS" ("IDPROVINCIA") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SV_MODELOS
--------------------------------------------------------

  ALTER TABLE "SV_MODELOS" ADD FOREIGN KEY ("IDMARCA")
	  REFERENCES "SV_MARCAS" ("IDMARCA") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SV_VEHIC_ACCID
--------------------------------------------------------

  ALTER TABLE "SV_VEHIC_ACCID" ADD FOREIGN KEY ("IDACCIDENTE")
	  REFERENCES "SV_TIPOSACCIDENTES" ("IDACCIDENTE") ENABLE;
  ALTER TABLE "SV_VEHIC_ACCID" ADD FOREIGN KEY ("MATRICULA")
	  REFERENCES "SV_VEHICULOS" ("MATRICULA") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SV_VEHICULOS
--------------------------------------------------------

  ALTER TABLE "SV_VEHICULOS" ADD FOREIGN KEY ("IDMODELO")
	  REFERENCES "SV_MODELOS" ("IDMODELO") ENABLE;
  ALTER TABLE "SV_VEHICULOS" ADD FOREIGN KEY ("IDSEGURO")
	  REFERENCES "SV_TIPOSSEGURO" ("IDSEGURO") ENABLE;
  ALTER TABLE "SV_VEHICULOS" ADD FOREIGN KEY ("DNI")
	  REFERENCES "SV_CLIENTES" ("DNI") ENABLE;

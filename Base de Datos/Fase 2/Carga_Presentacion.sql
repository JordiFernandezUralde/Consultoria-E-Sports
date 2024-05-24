/*CARGA DATOS PRESENTACION*/
-- USUARIOS
INSERT INTO USUARIOS (TIPO,CONTRASENNA)VALUES('Usuario','12345');
INSERT INTO USUARIOS (TIPO,CONTRASENNA)VALUES('Administrador','54321');
-- PARA DEVELOPMENT BORRAR DESPUES
INSERT INTO USUARIOS (TIPO, CONTRASENNA) VALUES('2','2'); -- USUARIO
INSERT INTO USUARIOS (TIPO, CONTRASENNA) VALUES('1','1'); -- ADMIN


-- EQUIPOS
INSERT INTO EQUIPOS (NOMBRE, FECHA_FUNDACION) VALUES
('KOI', TO_DATE('01/01/2015', 'DD/MM/YYYY'));
INSERT INTO EQUIPOS (NOMBRE, FECHA_FUNDACION) VALUES
('HERETICS', TO_DATE('09/07/2013', 'DD/MM/YYYY'));
INSERT INTO EQUIPOS (NOMBRE, FECHA_FUNDACION) VALUES
('GIANTS', TO_DATE('10/10/1994', 'DD/MM/YYYY'));
INSERT INTO EQUIPOS (NOMBRE, FECHA_FUNDACION) VALUES
('BARCELONA', TO_DATE('10/10/1994', 'DD/MM/YYYY'));

-- JUGADORES KOI
INSERT INTO JUGADORES (NOMBRE_JUGADOR,NACIONALIDAD,
FECHA_NAC,NICKNAME,ROL,SUELDO,COD_EQUIPO)
VALUES
('AUSTIN MCDONALD', 'ESTADOS UNIDOS', '10/06/1995', 'HATRIXX', 'TOP', 1350,(SELECT 
        COD_EQUIPO FROM EQUIPOS WHERE UPPER(NOMBRE) = 'KOI'));
INSERT INTO JUGADORES (NOMBRE_JUGADOR,NACIONALIDAD,
FECHA_NAC,NICKNAME,ROL,SUELDO,COD_EQUIPO)
VALUES
('PEPE GOMEZ', 'ESPA�A', '06/10/1999', 'XICO', 'JGL', 1350,(SELECT 
        COD_EQUIPO FROM EQUIPOS WHERE UPPER(NOMBRE) = 'KOI'));
INSERT INTO JUGADORES (NOMBRE_JUGADOR,NACIONALIDAD,
FECHA_NAC,NICKNAME,ROL,SUELDO,COD_EQUIPO)
VALUES
('ANDREY SHOWZKY', 'UCRANIA', '20/10/1997', 'SEAZ', 'MID', 1350,(SELECT 
        COD_EQUIPO FROM EQUIPOS WHERE UPPER(NOMBRE) = 'KOI'));
INSERT INTO JUGADORES (NOMBRE_JUGADOR,NACIONALIDAD,
FECHA_NAC,NICKNAME,ROL,SUELDO,COD_EQUIPO)
VALUES
('GIORGIO BARELLA', 'ITALIA', '23/01/1996', 'WHITEKNIGHT', 'ADC', 1350,(SELECT 
        COD_EQUIPO FROM EQUIPOS WHERE UPPER(NOMBRE) = 'KOI'));
        INSERT INTO JUGADORES (NOMBRE_JUGADOR,NACIONALIDAD,
FECHA_NAC,NICKNAME,ROL,SUELDO,COD_EQUIPO)
VALUES
('VLADIMIR SCHIGANKOV', 'RUSIA', '20/07/1995', 'SLT', 'SUPP', 1350,(SELECT 
        COD_EQUIPO FROM EQUIPOS WHERE UPPER(NOMBRE) = 'KOI'));
        
-- JUGADORES HERETICS
INSERT INTO JUGADORES (NOMBRE_JUGADOR,NACIONALIDAD,
FECHA_NAC,NICKNAME,ROL,SUELDO,COD_EQUIPO)
VALUES
('MARCIN LEBUDA', 'POLONIA', '08/03/1997', 'IBO', 'TOP', 1350,(SELECT 
        COD_EQUIPO FROM EQUIPOS WHERE UPPER(NOMBRE) = 'HERETICS'));
INSERT INTO JUGADORES (NOMBRE_JUGADOR,NACIONALIDAD,
FECHA_NAC,NICKNAME,ROL,SUELDO,COD_EQUIPO)
VALUES
('DENIEL SUBICZ', 'HUNGRIA', '04/05/1999', 'BLUEZOR', 'JGL', 1350,(SELECT 
        COD_EQUIPO FROM EQUIPOS WHERE UPPER(NOMBRE) = 'HERETICS'));
INSERT INTO JUGADORES (NOMBRE_JUGADOR,NACIONALIDAD,
FECHA_NAC,NICKNAME,ROL,SUELDO,COD_EQUIPO)
VALUES
('ARTUR TROJAN', 'POLONIA', '06/11/1998', 'ZWYROO', 'MID', 1350,(SELECT 
        COD_EQUIPO FROM EQUIPOS WHERE UPPER(NOMBRE) = 'HERETICS'));
INSERT INTO JUGADORES (NOMBRE_JUGADOR,NACIONALIDAD,
FECHA_NAC,NICKNAME,ROL,SUELDO,COD_EQUIPO)
VALUES
('ALEXSANDRU KOLOZSVARI', 'RUMANIA', '03/10/2000', 'WHITEINN', 'ADC', 1350,
(SELECT COD_EQUIPO FROM EQUIPOS WHERE UPPER(NOMBRE) = 'HERETICS'));
INSERT INTO JUGADORES (NOMBRE_JUGADOR,NACIONALIDAD,
FECHA_NAC,NICKNAME,ROL,SUELDO,COD_EQUIPO)
VALUES
('JACOB GULLVAG', 'NORUEGA', '05/12/2000', 'JACKSPECTRA', 'SUPP', 1350,
(SELECT COD_EQUIPO FROM EQUIPOS WHERE UPPER(NOMBRE) = 'HERETICS'));

-- JUGADORES GIANTS
INSERT INTO JUGADORES (NOMBRE_JUGADOR,NACIONALIDAD,
FECHA_NAC,NICKNAME,ROL,SUELDO,COD_EQUIPO)
VALUES
('ANTONIO ESPINOSA', 'ESPA�A', '12/04/1999', 'TH3ANTONIO', 'TOP', 1350,
(SELECT COD_EQUIPO FROM EQUIPOS WHERE UPPER(NOMBRE) = 'GIANTS'));
INSERT INTO JUGADORES (NOMBRE_JUGADOR,NACIONALIDAD,
FECHA_NAC,NICKNAME,ROL,SUELDO,COD_EQUIPO)
VALUES
('PHIL QUIN', 'PAISES BAJOS', '06/10/2000', 'ALBY', 'JGL', 1350,
(SELECT COD_EQUIPO FROM EQUIPOS WHERE UPPER(NOMBRE) = 'GIANTS'));
INSERT INTO JUGADORES (NOMBRE_JUGADOR,NACIONALIDAD,
FECHA_NAC,NICKNAME,ROL,SUELDO,COD_EQUIPO)
VALUES
('NICOLAS GAWRON', 'FRANCIA', '21/12/1999', 'DECAY', 'MID', 1350,
(SELECT COD_EQUIPO FROM EQUIPOS WHERE UPPER(NOMBRE) = 'GIANTS'));
INSERT INTO JUGADORES (NOMBRE_JUGADOR,NACIONALIDAD,
FECHA_NAC,NICKNAME,ROL,SUELDO,COD_EQUIPO)
VALUES
('AMADEU DIAS', 'PORTUGAL', '10/10/1999', 'ATTILA', 'ADC', 1350,
(SELECT COD_EQUIPO FROM EQUIPOS WHERE UPPER(NOMBRE) = 'GIANTS'));
INSERT INTO JUGADORES (NOMBRE_JUGADOR,NACIONALIDAD,
FECHA_NAC,NICKNAME,ROL,SUELDO,COD_EQUIPO)
VALUES
('HENK REIJENGA', 'PAISES BAJOS', '20/06/1993', 'ADVIENNE', 'SUPP', 1350,
(SELECT COD_EQUIPO FROM EQUIPOS WHERE UPPER(NOMBRE) = 'GIANTS'));

-- JUGADORES BARCELONA
INSERT INTO JUGADORES (NOMBRE_JUGADOR,NACIONALIDAD,
FECHA_NAC,NICKNAME,ROL,SUELDO,COD_EQUIPO)
VALUES
('PAU VINTRO', 'ESPA�A', '22/09/2004', 'PAUPORTER', 'TOP', 1350,
(SELECT COD_EQUIPO FROM EQUIPOS WHERE UPPER(NOMBRE) = 'BARCELONA'));
INSERT INTO JUGADORES (NOMBRE_JUGADOR,NACIONALIDAD,
FECHA_NAC,NICKNAME,ROL,SUELDO,COD_EQUIPO)
VALUES
('FRANCISCO MAZO', 'ESPA�A', '27/01/2002', 'THAYGER', 'JGL', 1350,
(SELECT COD_EQUIPO FROM EQUIPOS WHERE UPPER(NOMBRE) = 'BARCELONA'));
INSERT INTO JUGADORES (NOMBRE_JUGADOR,NACIONALIDAD,
FECHA_NAC,NICKNAME,ROL,SUELDO,COD_EQUIPO)
VALUES
('JAN ZITEK', 'REPUBLICA CHECA', '11/10/2004', 'SAJATOR', 'MID', 1350,
(SELECT COD_EQUIPO FROM EQUIPOS WHERE UPPER(NOMBRE) = 'BARCELONA'));
INSERT INTO JUGADORES (NOMBRE_JUGADOR,NACIONALIDAD,
FECHA_NAC,NICKNAME,ROL,SUELDO,COD_EQUIPO)
VALUES
('SERGIO VICENTE', 'ESPA�A', '20/12/2000', 'LEGOLAS', 'ADC', 1350,
(SELECT COD_EQUIPO FROM EQUIPOS WHERE UPPER(NOMBRE) = 'BARCELONA'));
INSERT INTO JUGADORES (NOMBRE_JUGADOR,NACIONALIDAD,
FECHA_NAC,NICKNAME,ROL,SUELDO,COD_EQUIPO)
VALUES
('VICTOR GUZMAN', 'ESPA�A', '30/04/2000', 'OSCURE', 'SUPP', 1350,
(SELECT COD_EQUIPO FROM EQUIPOS WHERE UPPER(NOMBRE) = 'BARCELONA'));

-- STAFF KOI
INSERT INTO STAFF (NOMBRE,CARGO,SUELDO,COD_EQUIPO) 
VALUES ('ANDER PEREZ','Entrenador',1400,(SELECT COD_EQUIPO FROM EQUIPOS
                                    WHERE NOMBRE = 'KOI'));
INSERT INTO STAFF (NOMBRE,CARGO,SUELDO,COD_EQUIPO) 
VALUES ('IBAI LLANOS','Asistente',1400,(SELECT COD_EQUIPO FROM EQUIPOS
                                    WHERE UPPER(NOMBRE) = 'KOI'));
                                    
-- STAFF HERETICS
INSERT INTO STAFF (NOMBRE,CARGO,SUELDO,COD_EQUIPO) 
VALUES ('NIL OJEDA','Entrenador',1400,(SELECT COD_EQUIPO FROM EQUIPOS
                                    WHERE UPPER(NOMBRE) = 'HERETICS'));
INSERT INTO STAFF (NOMBRE,CARGO,SUELDO,COD_EQUIPO) 
VALUES ('JORGE CASANOVA','Asistente',1400,(SELECT COD_EQUIPO FROM EQUIPOS
                                    WHERE UPPER(NOMBRE) = 'HERETICS'));
                                    
-- STAFF GIANTS
INSERT INTO STAFF (NOMBRE,CARGO,SUELDO,COD_EQUIPO) 
VALUES ('MANUEL TEJEDA','Entrenador',1400,(SELECT COD_EQUIPO FROM EQUIPOS
                                    WHERE UPPER(NOMBRE) = 'GIANTS'));
INSERT INTO STAFF (NOMBRE,CARGO,SUELDO,COD_EQUIPO) 
VALUES ('KARLOS FERNANDEZ','Asistente',1400,(SELECT COD_EQUIPO FROM EQUIPOS
                                    WHERE UPPER(NOMBRE) = 'GIANTS'));
                                    
-- STAFF BARCELONA
INSERT INTO STAFF (NOMBRE,CARGO,SUELDO,COD_EQUIPO) 
VALUES ('JOAN LAPORTA','Entrenador',1400,(SELECT COD_EQUIPO FROM EQUIPOS
                                    WHERE UPPER(NOMBRE) = 'BARCELONA'));
INSERT INTO STAFF (NOMBRE,CARGO,SUELDO,COD_EQUIPO) 
VALUES ('XAVI HERNANDEZ','Asistente',1400,(SELECT COD_EQUIPO FROM EQUIPOS
                                    WHERE UPPER(NOMBRE) = 'BARCELONA'));
                                    
-- PATROCINADOR KOI
INSERT INTO PATROCINADORES (NOMBRE) VALUES ('CS');
INSERT INTO PATROCINADORES (NOMBRE) VALUES ('DHL');
INSERT INTO PATROCINADORES_EQUIPOS (COD_EQUIPO, COD_PATROCINADORES)VALUES(
(SELECT COD_EQUIPO FROM EQUIPOS WHERE UPPER(NOMBRE) = 'KOI'),
(SELECT COD_PATROCINADORES FROM PATROCINADORES WHERE UPPER (NOMBRE) = 'DHL'));
INSERT INTO PATROCINADORES_EQUIPOS (COD_EQUIPO, COD_PATROCINADORES)VALUES(
(SELECT COD_EQUIPO FROM EQUIPOS WHERE UPPER(NOMBRE) = 'KOI'),
(SELECT COD_PATROCINADORES FROM PATROCINADORES WHERE UPPER (NOMBRE) = 'CS'));


-- PATROCINADOR HERETICS
INSERT INTO PATROCINADORES (NOMBRE) VALUES ('CORREOS');
INSERT INTO PATROCINADORES (NOMBRE) VALUES ('FEDEX');
INSERT INTO PATROCINADORES_EQUIPOS (COD_EQUIPO, COD_PATROCINADORES)VALUES(
(SELECT COD_EQUIPO FROM EQUIPOS WHERE UPPER(NOMBRE) = 'HERETICS'),
(SELECT COD_PATROCINADORES FROM PATROCINADORES WHERE UPPER (NOMBRE)='CORREOS'));
INSERT INTO PATROCINADORES_EQUIPOS (COD_EQUIPO, COD_PATROCINADORES)VALUES(
(SELECT COD_EQUIPO FROM EQUIPOS WHERE UPPER(NOMBRE) = 'HERETICS'),
(SELECT COD_PATROCINADORES FROM PATROCINADORES WHERE UPPER (NOMBRE) = 'FEDEX'));


-- PATROCINADOR GIANTS
INSERT INTO PATROCINADORES (NOMBRE) VALUES ('NIKE');
INSERT INTO PATROCINADORES (NOMBRE) VALUES ('ADIDAS');
INSERT INTO PATROCINADORES_EQUIPOS (COD_EQUIPO, COD_PATROCINADORES)VALUES(
(SELECT COD_EQUIPO FROM EQUIPOS WHERE UPPER(NOMBRE) = 'GIANTS'),
(SELECT COD_PATROCINADORES FROM PATROCINADORES WHERE UPPER (NOMBRE) = 'NIKE'));
INSERT INTO PATROCINADORES_EQUIPOS (COD_EQUIPO, COD_PATROCINADORES)VALUES(
(SELECT COD_EQUIPO FROM EQUIPOS WHERE UPPER(NOMBRE) = 'GIANTS'),
(SELECT COD_PATROCINADORES FROM PATROCINADORES WHERE UPPER (NOMBRE)='ADIDAS'));


-- PATROCINADOR BARCELONA
INSERT INTO PATROCINADORES (NOMBRE) VALUES ('PUMA');
INSERT INTO PATROCINADORES (NOMBRE) VALUES ('JOMA');
INSERT INTO PATROCINADORES_EQUIPOS (COD_EQUIPO, COD_PATROCINADORES)VALUES(
(SELECT COD_EQUIPO FROM EQUIPOS WHERE UPPER(NOMBRE) = 'BARCELONA'),
(SELECT COD_PATROCINADORES FROM PATROCINADORES WHERE UPPER (NOMBRE)='PUMA'));
INSERT INTO PATROCINADORES_EQUIPOS (COD_EQUIPO, COD_PATROCINADORES)VALUES(
(SELECT COD_EQUIPO FROM EQUIPOS WHERE UPPER(NOMBRE) = 'BARCELONA'),
(SELECT COD_PATROCINADORES FROM PATROCINADORES WHERE UPPER (NOMBRE)='JOMA'));


-- JUEGOS
INSERT INTO JUEGOS (NOMBRE,DESARROLLADORA,FECHA_LANZAMIENTO) 
VALUES ('LOL','RIOT','10/10/2010');
INSERT INTO JUEGOS (NOMBRE,DESARROLLADORA,FECHA_LANZAMIENTO) 
VALUES ('MINECRAFT','MOJANG','18/07/2012');
INSERT INTO JUEGOS (NOMBRE,DESARROLLADORA,FECHA_LANZAMIENTO) 
VALUES ('CSGO','VALVE','11/12/2005');
INSERT INTO JUEGOS (NOMBRE,DESARROLLADORA,FECHA_LANZAMIENTO) 
VALUES ('VALORANT','RIOT','14/04/2020');

-- COMPETICION
INSERT INTO COMPETICIONES 
(NOMBRE,FECHA_INICIO,FECHA_FIN,CURSO,EQUIPO_GANADOR,COD_JUEGO)
VALUES('LEC','25/04/2025','25/05/2026',0,NULL,
(SELECT COD_JUEGO FROM JUEGOS WHERE UPPER(NOMBRE) = 'LOL'));
INSERT INTO COMPETICIONES 
(NOMBRE,FECHA_INICIO,FECHA_FIN,CURSO,EQUIPO_GANADOR,COD_JUEGO)
VALUES('VCT','30/04/2018','30/05/2029',0,NULL,
(SELECT COD_JUEGO FROM JUEGOS WHERE UPPER(NOMBRE) = 'VALORANT'));
INSERT INTO COMPETICIONES 
(NOMBRE,FECHA_INICIO,FECHA_FIN,CURSO,EQUIPO_GANADOR,COD_JUEGO)
VALUES('CS:GO CHAMPIONSHIP','25/04/2020','25/05/2020',0,NULL,
(SELECT COD_JUEGO FROM JUEGOS WHERE UPPER(NOMBRE) = 'CSGO'));

-- ASOCIAR EQUIPOS A COMPETICION (LEC)
INSERT INTO EQUIPO_COMPETICION (COD_EQUIPO, COD_COMPETICION, PUNTOS) 
VALUES ((SELECT COD_EQUIPO FROM EQUIPOS WHERE UPPER(NOMBRE) = 'GIANTS'), 
(SELECT COD_COMPE FROM COMPETICIONES WHERE UPPER(NOMBRE) = 'LEC'), 0);
INSERT INTO EQUIPO_COMPETICION (COD_EQUIPO, COD_COMPETICION, PUNTOS) 
VALUES ((SELECT COD_EQUIPO FROM EQUIPOS WHERE UPPER(NOMBRE) = 'BARCELONA'), 
(SELECT COD_COMPE FROM COMPETICIONES WHERE UPPER(NOMBRE) = 'LEC'), 0);

COMMIT;
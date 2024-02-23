CREATE TABLE Empleados (
	elegajo char(6) NOT NULL,
	edni INT NOT NULL UNIQUE,
	enombre VARCHAR(50) NOT NULL,
	etel INT NOT NULL,
	edireccion VARCHAR(100) NOT NULL,
	eciudad VARCHAR(50) NOT NULL,
	efecha_nac DATE NOT NULL,
	efecha_ing DATE NOT NULL,
	PRIMARY KEY (elegajo)
);

CREATE TABLE Areas(
	acod CHAR(6) NOT NULL,
	anombre VARCHAR(50) NOT NULL,
	PRIMARY KEY (acod)
);

CREATE TABLE Productos(
	pcod CHAR(6) NOT NULL,
	pnombre VARCHAR(50) NOT NULL,
	ppeso_maximo FLOAT NOT NULL,
	ptipo VARCHAR(50) NOT NULL,
	acod VARCHAR(6) NOT NULL,
	PRIMARY KEY (pcod),
	FOREIGN KEY (acod) REFERENCES Areas(acod)
);

CREATE TABLE Trabaja(
	elegajo CHAR(6) NOT NULL,
	acod VARCHAR(50) NOT NULL,
	tanio_asing INT NOT NULL,
	tcant_horas INT NOT NULL,
	PRIMARY KEY (elegajo, acod),
	FOREIGN KEY (acod) REFERENCES Areas(acod),
	FOREIGN KEY (elegajo) REFERENCES Empleados(elegajo)
);

INSERT INTO empleados
(elegajo,edni,enombre, etel, edireccion, eciudad, efecha_nac, efecha_ing)            
     VALUES ('EPA315','25789547', 'ROSSI ABEL', '266415789', 'BELGRANO 125','SAN LUIS', '1995-12-12','2014-02-01'),
            ('DRT456', '25471254', 'PREZ MATIAS', '265715698', 'RIVADAVIA 314','V MERCEDES', '2000-03-01','2018-03-24'),            
            ('QWE123', '28547125', 'PEREZ ARIEL', '266415874', 'MAIPU 425','SAN LUIS', '2000-01-28','2018-02-01'),	
            ('ASD423', '28963852', 'SOSA CARINA', '265715741', 'DON BOSCO 585','V MERCEDES', '1985-05-14','2008-05-14'),
            ('ZXC753', '21457896', 'BAZAN ANA', '266415963', 'MITRE 214','SAN LUIS', '1981-06-08','2006-05-03'),
            ('POI951', '22547856', 'GOMEZ ELISA', '265715632', 'RIVADAVIA 895','V MERCEDES', '1990-08-05','2009-12-04'),
            ('JKL357', '23547125', 'GOMEZ JUAN', '266415963', 'PRINGLES 854','SAN LUIS', '1996-09-30','2016-09-18'),
            ('BNM741', '23963852', 'PERALTA PEDRO', '265715214', 'COLON 452','V MERCEDES', '1989-10-15','2014-10-06'),
            ('WER852', '24125865', 'RUIZ CELESTE', '266415963', 'RIVADAVIA 1025','SAN LUIS', '1987-03-27','2009-12-08'),
            ('SDF963', '25125125', 'AGUERO TOMAS', '266415841', 'AYACUCHO 584','SAN LUIS', '1999-01-02','2018-03-05'),
            ('XCV357', '24789456', 'LUCERO LAURA', '265715478', 'LAS ERAS 145','V MERCEDES', '1992-05-25','2011-10-25'),
            ('OIU125', '26987412', 'LUNA GABRIEL', '265715231', 'ROCA 475','V MERCEDES', '1982-07-20','2000-09-25'),
            ('LKJ325', '26852963', 'SANCHEZ ANA', '266415478', 'SUCRE 65','SAN LUIS', '1998-11-08','2017-11-21'),
            ('BVC789', '27458452', 'BENITEZ SIMON', '266415241', 'CENTENARIO 58','SAN LUIS', '1993-12-15','2013-08-05'),
            ('TGB124', '27325658', 'MANSILLA DELIA', '266415852', 'RIVADAVIA 452','SAN LUIS', '1987-02-24','2018-01-25'),
            ('YHN541', '30874265', 'SOSA JUAN', '266415321', 'FALUCHO 584','SAN LUIS', '1994-06-12','2017-09-25'),
            ('IKM985', '33985654', 'RAMIREZ PEDRO JOSE', '265715874', 'MAIPU 852','V MERCEDES', '1998-12-24','2018-03-27');
            
INSERT INTO areas(acod,anombre)
    VALUES ('AAA789', 'INGRESO'),
		   ('AAA123', 'INGRESO MEDIO'),
           ('AAA852', 'EXPERIENCIA'),
           ('AAA147', 'NIVEL MEDIO'),
           ('AAA985', 'NIVEL COMPLETO'),
           ('AAA357', 'EXPERTO');

INSERT INTO productos(pcod, pnombre, ppeso_maximo,ptipo, acod)
    VALUES ('CAR789', 'POLLO EMBAZADO', 4.5, 'CARNES', 'AAA789'),
           ('CAR456', 'COSTELETA EMBAZADA', 2, 'CARNES', 'AAA123'),
           ('CAR123', 'PULPA EMBAZADA', 1, 'CARNES', 'AAA852'),
           ('CAR147', 'LOMO', 1.5, 'CARNES', 'AAA789'),
           ('CAR258', 'CHIVO', 10, 'CARNES', 'AAA123'),           
           ('CAR369', 'CORDERO', 15, 'CARNES', 'AAA852'),           
           ('CAR321', 'MUSLO DE POLLO', 3, 'CARNES', 'AAA789'),           
           ('CAR654', 'CESOS DE VACA', 0.5, 'CARNES', 'AAA123'),           
           ('CAR987', 'LENGUA DE VACA', 2, 'CARNES', 'AAA852'),           
           ('CAR741', 'CONEJO', 3, 'CARNES', 'AAA852'),           
           ('LEG582', 'LENTEJAS', 5, 'LEGUMBRES', 'AAA147'),           
           ('LEG571', 'LENTEJAS ROJAS', 3, 'LEGUMBRES', 'AAA985'),
           ('LEG593', 'GARBANZO', 4, 'LEGUMBRES', 'AAA357'),
           ('LEG471', 'ALUBIA', 8, 'LEGUMBRES', 'AAA147'),           
           ('LEG482', 'HUMUS',6, 'LEGUMBRES', 'AAA147'),           
           ('LEG493', 'GUISANTES', 3, 'LEGUMBRES', 'AAA985'),           
           ('LEG671', 'SOJA', 2, 'LEGUMBRES', 'AAA852'),
           ('LAC123', 'QUESO CUARTIROLO', 5, 'LACTEOS', 'AAA789'),
           ('LAC547', 'QUESO FETA', 2, 'LACTEOS', 'AAA123'),
           ('LAC654', 'YOGUR', 2, 'LACTEOS', 'AAA852'),           
           ('LAC147', 'HELADO', 5, 'LACTEOS', 'AAA852'),           
           ('LAC741', 'QUESO MUZZARELLA', 10, 'LACTEOS', 'AAA147'),           
           ('LAC258', 'QUESO PARMESANO', 9, 'LACTEOS', 'AAA985'),           
           ('LAC874', 'RICOTTA', 3, 'LACTEOS', 'AAA357'),           
           ('LAC894', 'REQUESON', 6, 'LACTEOS', 'AAA147'); 
		   
INSERT INTO trabaja(
            elegajo, acod, tanio_asing, tcant_horas)
    VALUES ('EPA315', 'AAA789', 2000, 2),
           ('EPA315', 'AAA123', 2002, 2),
           ('EPA315', 'AAA852', 2000, 2),           
           ('EPA315', 'AAA147', 2005, 2),           
           ('DRT456', 'AAA985', 2001, 4),           
           ('DRT456', 'AAA357', 2006, 3),           
	   ('QWE123', 'AAA985', 2010, 5),	   
	   ('QWE123', 'AAA789', 2010, 2),	     
	   ('QWE123', 'AAA123', 2014, 1),	   
	   ('ASD423', 'AAA852', 2004, 8),	   
	   ('ZXC753', 'AAA147', 2005, 4),	   
	   ('ZXC753', 'AAA985', 2007, 4),	   
	   ('POI951', 'AAA789', 2004, 8),	   
	   ('JKL357', 'AAA123', 2002, 6),	   
	   ('BNM741', 'AAA852', 2006, 5),	   
	   ('WER852', 'AAA147', 2001, 4),	   
	   ('SDF963', 'AAA985', 2009, 3),	   
	   ('XCV357', 'AAA357', 2013, 5),	   
	   ('OIU125', 'AAA985', 2016, 8),	   
	   ('LKJ325', 'AAA357', 2014, 8),	   
	   ('BVC789', 'AAA852', 2008, 8),	   
	   ('TGB124', 'AAA147', 2003, 3),	   
	   ('YHN541', 'AAA985', 2004, 3),	   
	   ('IKM985', 'AAA357', 2014, 6);  

INSERT INTO areas (acod, anombre)
VALUES ('HHH000', 'TEMPORARIA');

INSERT INTO empleados(
            elegajo,edni,enombre, etel, edireccion, eciudad, efecha_nac, 
            efecha_ing)
VALUES ('CAA100','32000001','CORNEJO ALFONSO','265715124','ESPAÑA 915','LA PUNTA','1996-01-04','2018-05-07'),
	   ('FBB200','31111112','ARRIETA ALICIA','265711257','SUCRE 1024','CONCARAN','2000-12-14','2021-08-27'),
	   ('GCC300','34222223','TOLOSA AGUSTINA ','265712896','MITRE 2056','MERLO','1998-02-15','2022-06-15'),
	   ('HDD400','35333334','PERALTA BLAS','266489562','BELGRANO 4096','CORTADERAS','2001-08-24','2017-10-29');
       
INSERT INTO empleados(elegajo,edni,enombre,etel,edireccion, eciudad, efecha_nac, 
            efecha_ing)
VALUES ('TRE325','20958770','NAHUEL ECHEVERRIA','265715668','Juan B. Justo 242', 'Villa Mercedes','1981-03-08','2020-01-23');


INSERT INTO trabaja (elegajo, acod, tanio_asing, tcant_horas)
VALUES ((SELECT elegajo FROM empleados WHERE elegajo='TRE325'), (SELECT acod FROM areas WHERE anombre='INGRESO'), 2023,5);

INSERT INTO productos
VALUES ("LAC462","QUESO SUIZO",1,"LACTEOS","AAA123");

ALTER TABLE empleados ADD ehijos INT DEFAULT 0;

UPDATE empleados SET ehijos = 2 WHERE elegajo="IKM985";




1
SELECT * FROM productos;

2
SELECT enombre,edireccion,etel 
FROM empleados 
ORDER BY enombre;

3
SELECT elgajo, enombre, edireccion 
FROM empleados 
ORDER BY efecha_ing DESC;

4
SELECT pnombre, ptipo, areas.acod, anombre 
FROM productos JOIN areas 
ON productos.acod = areas.acod;

5
SELECT pcod, pnombre, areas.acod, anombre
FROM productos JOIN areas
ON productos.acod=areas.acod AND productos.ptipo='LACTEOS'
ORDER BY pnombre;

6
SELECT DISTINCT anombre, areas.acod 
FROM productos JOIN areas
ON areas.acod=productos.acod AND productos.ptipo='CARNES';

7
SELECT enombre, elegajo, edireccion 
FROM empleados 
WHERE edireccion LIKE '%RIVADAVIA%';

8
SELECT pcod, pnombre
FROM productos 
WHERE (ptipo='LEGUMBRES' OR ptipo='LACTEOS') AND ppeso_maximo<2.5;

9
SELECT enombre, elegajo 
FROM ((areas JOIN productos ON areas.acod=productos.acod AND productos.ppeso_maximo>5)
	JOIN trabaja ON areas.acod=trabaja.acod) 
	JOIN empleados ON empleados.elegajo=trabaja.elegajo;

10
SELECT elegajo, enombre
FROM empleados
WHERE enombre LIKE 'S%' AND efecha_ing<'15/10/2015';

11
SELECT enombre, empleados.elegajo, eciudad, anombre, tcant_horas
FROM (empleados JOIN trabaja ON empleados.elegajo=trabaja.elegajo)
	JOIN areas ON trabaja.acod=areas.acod
ORDER BY tcant_horas;

12
SELECT pnombre FROM productos WHERE (ppeso_maximo<=7 AND ppeso_maximo>=2) OR ptipo='CARNES';

13
SELECT COUNT(*) FROM productos;

14
SELECT COUNT(DISTINCT empleados.elegajo) as cantidad_empleados
FROM empleados
JOIN trabaja ON empleados.elegajo = trabaja.elegajo
JOIN productos ON trabaja.acod = productos.acod
WHERE productos.ptipo = 'LEGUMBRES';

15
SELECT ptipo, COUNT(*) AS cantidad
FROM productos
GROUP BY ptipo;

16
SELECT ptipo
FROM productos
GROUP BY ptipo HAVING AVG(ppeso_maximo)>5;

17
SELECT enombre, edni, etel
FROM empleados
ORDER BY efecha_nac ASC;

18
SELECT enombre, empleados.elegajo 
FROM trabaja JOIN areas ON areas.acod=trabaja.acod
	JOIN empleados ON empleados.elegajo=trabaja.elegajo
	GROUP BY enombre, empleados.elegajo 
	HAVING COUNT(DISTINCT areas.acod) = 1 AND MAX (areas.acod) = 'AAA123';

19
SELECT enombre, edni, etel, anombre
FROM empleados, trabaja, areas
WHERE empleados.elegajo=trabaja.elegajo
	AND areas.acod=trabaja.acod 
GROUP BY empleados.elegajo, areas.anombre
HAVING SUM(tcant_horas)>4;

20
SELECT enombre, trabaja.elegajo
FROM empleados JOIN trabaja ON empleados.elegajo = trabaja.elegajo
GROUP BY enombre, trabaja.elegajo
HAVING COUNT(trabaja.acod) > 2;

21
SELECT enombre, edni 
FROM empleados JOIN trabaja ON empleados.elegajo=trabaja.elegajo 
WHERE acod IN ('AAA147','AAA985')
GROUP BY enombre, edni
HAVING COUNT(DISTINCT acod) = 2;

22
SELECT pnombre, pcod
FROM productos
WHERE productos.acod IN (
  SELECT productos.acod
  FROM productos
  WHERE productos.pnombre = 'QUESO FETA'
);

23
SELECT anombre, COUNT(*)
FROM areas JOIN productos
	ON areas.acod=productos.acod 
GROUP BY anombre, productos.acod
ORDER BY anombre;

24
SELECT enombre, empleados.elegajo
FROM empleados
JOIN trabaja ON empleados.elegajo = trabaja.elegajo
JOIN areas ON trabaja.acod = areas.acod
WHERE areas.acod = 'AAA789'
AND empleados.elegajo NOT IN (
  SELECT trabaja.elegajo
  FROM trabaja
  JOIN areas ON trabaja.acod = areas.acod
  WHERE areas.acod = 'AAA852'
);

25
SELECT DISTINCT enombre, efecha_ing
FROM empleados JOIN trabaja 
	ON empleados.elegajo=trabaja.elegajo
	JOIN productos 
	ON trabaja.acod=productos.acod AND (ptipo='CARNES' OR ppeso_maximo>5);

26
SELECT enombre, oaybd1.empleados.elegajo, anombre AS nombre_area, efecha_ing, tcant_horas
FROM oaybd1.empleados
LEFT JOIN oaybd1.trabaja ON oaybd1.empleados.elegajo = oaybd1.trabaja.elegajo
LEFT JOIN oaybd1.areas ON oaybd1.trabaja.acod = oaybd1.areas.acod
ORDER BY enombre;

(LEFT JOIN permite mostrar todos los empleados, 
independientemente de si trabajan en un área o no) 
(ya que la tabla empleados es la de la izquierda)





EJ4
a) Un índice en una base de datos es una estructura que mejora la eficiencia de las 
consultas al permitir un acceso más rápido a los datos. Funciona como una lista 
ordenada de valores de una o varias columnas seleccionadas de una tabla, donde cada 
valor del índice está asociado con la ubicación física de los datos correspondientes 
en la tabla. La utilidad de los índices radica en su capacidad para acelerar la búsqueda 
y recuperación de datos, reducir la carga en el servidor de la base de datos y mejorar 
el rendimiento general de las consultas.

b) La creación de un índice no altera los resultados de las consultas, 
sino que mejora la velocidad de ejecución de las mismas. El propósito 
de un índice es acelerar el acceso a los datos, no modificar los datos en sí mismos.

c) En el ejercicio anterior, las consultas que podrían hacer uso del índice creado en
 la columna "ptipo" de la tabla "Productos" serían todas aquellas que incluyan una 
 búsqueda basada en esa columna.
 CREATE INDEX index_ptipo ON productos (ptipo);

d) No se beneficiaría, porque el join de la tabla 
empleados con la tabla trabaja no se hace por edni.
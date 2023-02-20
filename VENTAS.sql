CREATE DATABASE VENTAS

USE VENTAS

CREATE TABLE TIPO_CLIENTE(
	idTipo INT PRIMARY KEY,
	descripcion VARCHAR(50)
)

--INSERT INTO TIPO_CLIENTE(idTipo, descripcion) values(1, 'Natural')
--INSERT INTO TIPO_CLIENTE(idTipo, descripcion) values(2, 'Juridica')

INSERT INTO TIPO_CLIENTE(idTipo, descripcion) values
	(1,'Natural'),
	(2,'Juridica');

CREATE TABLE CLIENTE(
	idCliente CHAR(10) PRIMARY KEY,
	nombre VARCHAR(150) NOT NULL,
	sexo CHAR(1) NOT NULL,
	tipoCliente INT NOT NULL,
	FOREIGN KEY(tipoCliente) REFERENCES TIPO_CLIENTE(idTipo)
)

INSERT INTO CLIENTE(idCliente, nombre, sexo, tipoCliente) VALUES('0850106188', 'NIGELL JAMA', 'M', 1);

INSERT INTO CLIENTE(idCliente, nombre, sexo, tipoCliente) VALUES
    ('0800454183', 'MARCEL JAMA', 'M', 1),
    ('0850106120', 'OMAR GREFA', 'M', 1),
    ('0850146128', 'ALEJANDRO SALAZAR', 'M', 2),
    ('0850106178', 'ANDREA MORETA', 'F', 1),
    ('0850106168', 'DORIS VILLALVA', 'F', 1),
    ('0850106148', 'JOSEPH GONZALEZ', 'M', 2),
    ('0840106118', 'DAYANA NARANJO', 'F', 1),
    ('0870106108', 'CIELO MORILLO', 'F', 1),
    ('0850106588', 'MARINA AMAGUAYA', 'F', 1),
    ('0850106688', 'GUADALUPE MUNIOZ', 'F', 2),
    ('0850106788', 'VICTOR OCHOA', 'M', 1),
    ('0850106888', 'DIEGO CAMPOS', 'M', 2),
    ('0850106988', 'STALIN ALVARADO', 'M', 2),
    ('0850106108', 'GEOVANNY CARVAJAL', 'M', 1),
    ('0850106118', 'JHOEL CAIZA', 'M', 2),
    ('0850116128', 'JUAN YAUCEN', 'M', 2),
    ('0850106138', 'FRANCIS SEPULVEDA', 'M', 1),
	('0850106218', 'RICARDO BARRET', 'M', 1),
    ('0850116158', 'RICARDO VACA', 'M', 2),
    ('0850106128', 'DANIEL QUIGUIRI', 'M', 1);

CREATE TABLE VENDEDOR(
	idVendedor CHAR(10) PRIMARY KEY,
	nombre VARCHAR(150) NOT NULL,
	sexo CHAR(1) NOT NULL,
	salario FLOAT NOT NULL
)

INSERT INTO VENDEDOR(idVendedor, nombre, sexo, salario) VALUES('0650106199', 'JOEL CRIOLLO', 'M', 750.65)

INSERT INTO VENDEDOR(idVendedor, nombre, sexo, salario) VALUES
	('0650106190', 'ROGELIO ANDI', 'M', 750.65),
	('0650106200', 'MARCEL OYARVIDE', 'M', 499.35),
	('0650106201', 'ALEJANDRO RAMOS', 'M', 530.21),
	('0650106202', 'PATRICIA AVECILLA', 'F', 750.65),
	('0650106203', 'FLORESMILO QUEZADA', 'M', 750.65),
	('0650106204', 'ENRIQUE PEÑA', 'M', 750.65),
	('0650106205', 'ROSENDO CAICEDO', 'M', 750.65),
	('0650106206', 'EUGENE ZABOK', 'F', 750.65),
	('0650106207', 'BENJAMIN MARTIN', 'M', 750.65),
	('0650106208', 'REED KOCH', 'F', 750.65),
	('0650106209', 'DAVID LAWRENCE', 'M', 750.65),
	('0650106210', 'RUSSEL KING', 'M', 750.65),
	('0650106211', 'JEAN MIKOSV', 'F', 750.65),
	('0650106212', 'KATIE WHITE', 'F', 750.65),
	('0650106213', 'JOHN FRUM', 'M', 750.65),
	('0650106214', 'BARBARA DECKER', 'F', 750.65),
	('0650106215', 'NITIN MIRCH', 'F', 750.65),
	('0650106216', 'STEFEN HESSE', 'M', 750.65),
	('0650106217', 'SHANE KIM', 'F', 750.65),
	('0650106218', 'JOHN CHEN', 'M', 750.65);

CREATE TABLE FAMILIA_PRODUCTO(
	idFmlia CHAR(2) PRIMARY KEY,
	familia VARCHAR(100) NOT NULL,
	descripcion VARCHAR(100) NOT NULL
)

INSERT INTO FAMILIA_PRODUCTO(idFmlia, familia, descripcion) VALUES('lc', 'lacteos', 'descripcion')

INSERT INTO FAMILIA_PRODUCTO(idFmlia, familia, descripcion) VALUES
	('cr', 'carnicos', 'descripcion'),
	('ft', 'confiteria', 'descripcion'),
	('as', 'aseo', 'descripcion');

CREATE TABLE PRODUCTO(
	idProducto CHAR(12) PRIMARY KEY,
	nombre VARCHAR(150) NOT NULL,
	precioUnitario FLOAT NOT NULL,
	stock INT NOT NULL,
	idFmlia CHAR(2) NOT NULL,
	FOREIGN KEY(idFmlia) REFERENCES FAMILIA_PRODUCTO(idFmlia)
)

INSERT INTO PRODUCTO(idProducto, nombre, precioUnitario, stock, idFmlia) VALUES('AS-5381-316', 'SHAMPOO', 12.99, 1000, 'as')
INSERT INTO PRODUCTO(idProducto, nombre, precioUnitario, stock, idFmlia) VALUES('AS-8327-317', 'CLORO', 3.99, 230, 'as')

INSERT INTO PRODUCTO(idProducto, nombre, precioUnitario, stock, idFmlia) VALUES
	('AS-2349-318', 'CLORO', 1.99, 330, 'as'),
	('AS-2908-319', 'DEJA', 2.99, 130, 'as'),
	('AS-2036-320', 'JABON', 4.99, 430, 'as'),
	('CR-5965-321', 'CHULETA', 5.99, 210, 'cr'),
	('CR-6738-322', 'POLLO', 5.99, 145, 'cr'),
	('CR-7457-323', 'COSTELETA', 3.99, 50, 'cr'),
	('CR-2903-324', 'RES', 3.99, 30, 'cr'),
	('CR-6137-325', 'CHANCHO', 3.99, 20, 'cr'),
	('CR-7833-326', 'POLLO', 3.99, 15, 'cr'),
	('FT-9981-327', 'UFO', 0.99, 35, 'ft'),
	('FT-2812-328', 'PLOP', 0.35, 27, 'ft'),
	('FT-8732-329', 'TANGO', 0.90, 14, 'ft'),
	('FT-8824-330', 'REVOLCON', 0.10, 100, 'ft'),
	('FT-2377-331', 'CHISPITA', 0.25, 57, 'ft'),
	('FT-3423-332', 'SAPITO', 0.15, 34, 'ft'),
	('LC-8732-334', 'REYLECHE', 1.55, 230, 'lc'),
	('LC-2981-335', 'QUESO', 1, 230, 'lc'),
	('LC-8019-336', 'MANTEQUILLA', 2.99, 230, 'lc'),
	('LC-6280-337', 'PARMALAT', 2.25, 230, 'lc');

CREATE TABLE VENTA(
	numVenta INT PRIMARY KEY,
	fechaVenta DATE NOT NULL,
	idCliente CHAR(10) NOT NULL,
	idVendedor CHAR (10) NOT NULL,
	valorVenta FLOAT NOT NULL
	FOREIGN KEY(idVendedor) REFERENCES VENDEDOR(idVendedor),
)

INSERT INTO VENTA(numVenta, fechaVenta, idCliente, idVendedor, valorVenta) VALUES(0001, '2023-02-10', '0850106188', '0650106218', 4.99) -- PRODUCTO: 'AS-2036-320'

INSERT INTO VENTA(numVenta, fechaVenta, idCliente, idVendedor, valorVenta) VALUES
	(0002, '2023-02-10', '0850106188', '0650106209', 15.98),-- PRODUCTO: 'LC-8019-336' 'AS-5381-316'
	(0003, '2023-02-11', '0800454183', '0650106217', 17.97),-- PRODUCTO: 'CR-6738-322' X3
	(0004, '2023-02-12', '0850106118', '0650106211', 1.80),	-- PRODUCTO: 'LC-6280-337' 'FT-2377-331'
	(0005, '2022-02-13', '0850106108', '0650106210', 5.14),	-- PRODUCTO: 'AS-2036-320' 'FT-3423-332'
	(0006, '2023-02-11', '0850106120', '0650106209', 4.99),	-- PRODUCTO: 'LC-2981-335' 'CR-7833-326'
	(0007, '2023-02-17', '0850106128', '0650106190', 4.09),	-- PRODUCTO: 'FT-9981-327' 'LC-8732-334' X2
	(0008, '2023-02-21', '0850106138', '0650106199', 15),	-- PRODUCTO: 'FT-3423-332' X100
	(0009, '2023-02-20', '0850106148', '0650106208', 0.20),	-- PRODUCTO: 'FT-8824-330' X2
	(0010, '2021-02-12', '0850106168', '0650106217', 8.59),	-- PRODUCTO: 'FT-8732-329' X4 'AS-2036-320'
	(0011, '2020-02-05', '0850106178', '0650106216', 4.99),	-- PRODUCTO: 'AS-2036-320'
	(0012, '2023-02-06', '0850106188', '0650106215', 2.99),	-- PRODUCTO: 'AS-2908-319'
	(0013, '2023-02-07', '0850106218', '0650106214', 18.98),-- PRODUCTO: 'AS-5381-316' 'CR-5965-321'
	(0014, '2023-02-01', '0850106588', '0650106213', 3.99),	-- PRODUCTO: 'AS-8327-317'
	(0015, '2023-02-02', '0850106688', '0650106212', 3.99),	-- PRODUCTO: 'CR-2903-324'
	(0016, '2023-01-10', '0850106788', '0650106211', 1.25),	-- PRODUCTO: 'FT-2377-331' X5
	(0017, '2023-02-11', '0850106888', '0650106210', 1.34),	-- PRODUCTO: 'FT-2812-328' 'FT-9981-327'
	(0018, '2020-01-25', '0850106988', '0650106209', 4.34),	-- PRODUCTO: 'FT-2812-328' 'CR-7833-326'
	(0019, '2023-01-16', '0850116128', '0650106208', 0.50),	-- PRODUCTO: 'FT-2812-328' 'FT-3423-332'
	(0020, '2023-01-25', '0850116158', '0650106207', 0.15),	-- PRODUCTO: 'FT-3423-332' 
	(0021, '2023-03-09', '0850116158', '0650106206', 2.45),	-- PRODUCTO: 'FT-8732-329' 'LC-8732-334'
	(0022, '2023-03-18', '0850116158', '0650106205', 23.32),-- PRODUCTO: 'FT-8824-330' 'LC-6280-337' 'CR-6738-322' 'AS-5381-316' 'AS-2349-318'
	(0023, '2023-02-18', '0850146128', '0650106206', 2.25),	-- PRODUCTO: 'LC-6280-337'
	(0024, '2023-01-27', '0870106108', '0650106218', 1),	-- PRODUCTO: 'LC-2981-335'
	(0025, '2023-01-25', '0800454183', '0650106206', 11.23),-- PRODUCTO: 'LC-6280-337' 'AS-2908-319' 'CR-6738-322' 
	(0026, '2023-01-31', '0850106138', '0650106218', 22.94),-- PRODUCTO: 'LC-8019-336' 'CR-7833-326'X5
	(0027, '2022-11-27', '0850106188', '0650106218', 1),	-- PRODUCTO: 'LC-2981-335'
	(0028, '2022-12-25', '0850106788', '0650106218', 7.98),	-- PRODUCTO: 'CR-2903-324' 'CR-7457-323'
	(0029, '2020-12-12', '0850106788', '0650106218', 3.99),	-- PRODUCTO: 'AS-8327-317'
	(0030, '2020-02-10', '0850106788', '0650106218', 1.10),	-- PRODUCTO: 'CR-7833-326'
	(0031, '2021-02-10', '0850116128', '0650106218', 2.99),	-- PRODUCTO: 'AS-2908-319'
	(0032, '2023-02-10', '0850116128', '0650106218', 1.55),	-- PRODUCTO: 'LC-8732-334'
	(0033, '2023-01-06', '0850106148', '0650106218', 4.24),	-- PRODUCTO: 'LC-2981-335' 'FT-9981-327' 'LC-6280-337'
	(0034, '2023-01-06', '0850116128', '0650106190', 5.97),	-- PRODUCTO: 'AS-2349-318' X3
	(0035, '2023-03-06', '0870106108', '0650106190', 2.25),	-- PRODUCTO: 'LC-6280-337'
	(0036, '2020-12-22', '0850116158', '0650106199', 2.74),	-- PRODUCTO: 'FT-8732-329' 'FT-2377-331' 'FT-2812-328' 'FT-3423-332' 'FT-8824-330' 'FT-9981-327'
	(0037, '2021-01-10', '0850106688', '0650106190', 1.99),	-- PRODUCTO: 'AS-2349-318'
	(0038, '2021-02-10', '0850106178', '0650106210', 0.35),	-- PRODUCTO: 'FT-2812-328'
	(0039, '2022-02-23', '0850106148', '0650106211', 5.99),	-- PRODUCTO: 'CR-5965-321'
	(0040, '2021-01-29', '0850106188', '0650106213', 4.99),	-- PRODUCTO: 'AS-2036-320'
	(0041, '2020-12-29', '0870106108', '0650106212', 14.54),-- PRODUCTO: 'AS-5381-316' 'LC-8732-334'
	(0042, '2019-01-25', '0800454183', '0650106206', 11.23),-- PRODUCTO: 'LC-6280-337' 'AS-2908-319' 'CR-6738-322'
	(0043, '2019-01-31', '0850106138', '0650106218', 22.94),-- PRODUCTO: 'LC-8019-336' 'CR-7833-326'X5
	(0044, '2019-11-27', '0850106188', '0650106206', 1),	-- PRODUCTO: 'LC-2981-335'
	(0045, '2019-12-25', '0850106788', '0650106206', 7.98),	-- PRODUCTO: 'CR-2903-324' 'CR-7457-323'
	(0046, '2019-12-12', '0850106788', '0650106218', 3.99),	-- PRODUCTO: 'AS-8327-317'
	(0047, '2019-02-10', '0850106788', '0650106190', 1.10),	-- PRODUCTO: 'CR-7833-326'
	(0048, '2019-02-10', '0850116128', '0650106212', 2.99),	-- PRODUCTO: 'AS-2908-319'
	(0049, '2019-02-10', '0850116128', '0650106190', 1.55),	-- PRODUCTO: 'LC-8732-334'
	(0050, '2019-01-06', '0850106148', '0650106218', 4.24),	-- PRODUCTO: 'LC-2981-335' 'FT-9981-327' 'LC-6280-337'
	(0051, '2019-01-06', '0850116128', '0650106190', 5.97),	-- PRODUCTO: 'AS-2349-318' X3
	(0052, '2019-03-06', '0870106108', '0650106190', 2.25),	-- PRODUCTO: 'LC-6280-337'
	(0053, '2019-12-22', '0850116158', '0650106218', 2.74),	-- PRODUCTO: 'FT-8732-329' 'FT-2377-331' 'FT-2812-328' 'FT-3423-332' 'FT-8824-330' 'FT-9981-327'
	(0054, '2019-01-10', '0850106688', '0650106190', 1.99),	-- PRODUCTO: 'AS-2349-318'
	(0055, '2019-02-10', '0850106178', '0650106210', 0.35),	-- PRODUCTO: 'FT-2812-328'
	(0056, '2019-02-23', '0850106148', '0650106211', 5.99),	-- PRODUCTO: 'CR-5965-321'
	(0057, '2019-01-29', '0850106188', '0650106213', 4.99),	-- PRODUCTO: 'AS-2036-320'
	(0058, '2019-12-29', '0870106108', '0650106218', 14.54);-- PRODUCTO: 'AS-5381-316' 'LC-8732-334'

CREATE TABLE DETALLE_VENTA(
	numVenta INT NOT NULL,
	idProducto CHAR(12) NOT NULL,
	cantidad INT
	FOREIGN KEY(numVenta) REFERENCES VENTA(numVenta),
	FOREIGN KEY(idProducto) REFERENCES PRODUCTO(idProducto)
)

INSERT INTO DETALLE_VENTA(numVenta, idProducto, cantidad) VALUES(0001, 'AS-2036-320', 1)

INSERT INTO DETALLE_VENTA(numVenta, idProducto, cantidad) VALUES
	(0002, 'LC-8019-336', 1),
	(0002, 'AS-5381-316', 1),
	(0003, 'CR-6738-322', 3),
	(0004, 'LC-6280-337', 1),
	(0004, 'FT-2377-331', 1),
	(0005, 'AS-2036-320', 1),
	(0005, 'FT-3423-332', 1),
	(0006, 'LC-2981-335', 1),
	(0006, 'CR-7833-326', 1),
	(0007, 'FT-9981-327', 1),
	(0007, 'LC-8732-334', 2),
	(0008, 'FT-3423-332', 100),
	(0009, 'FT-8824-330', 2),
	(0010, 'FT-8732-329', 4),
	(0010, 'AS-2036-320', 1),
	(0011, 'AS-2036-320', 1),
	(0012, 'AS-2908-319', 1),
	(0013, 'AS-5381-316', 1),
	(0013, 'CR-5965-321', 1),
	(0014, 'AS-8327-317', 1),
	(0015, 'CR-2903-324', 1),
	(0016, 'FT-2377-331', 5),
	(0017, 'FT-2812-328', 1),
	(0017, 'FT-9981-327', 1),
	(0018, 'FT-2812-328', 1),
	(0018, 'CR-7833-326', 1),
	(0019, 'FT-2812-328', 1),
	(0019, 'FT-3423-332', 1),
	(0020, 'FT-3423-332', 1),
	(0021, 'FT-8732-329', 1),
	(0021, 'LC-8732-334', 1),
	(0022, 'LC-6280-337', 1),
	(0022, 'CR-6738-322', 1),
	(0022, 'AS-5381-316', 1),
	(0022, 'AS-2349-318', 1),
	(0023, 'LC-6280-337', 1),
	(0024, 'LC-2981-335', 1),
	(0025, 'LC-6280-337', 1),
	(0025, 'AS-2908-319', 1),
	(0025, 'CR-6738-322', 1),
	(0026, 'LC-8019-336', 1),
	(0026, 'CR-7833-326', 5),
	(0027, 'LC-2981-335', 1),
	(0028, 'CR-2903-324', 1),
	(0028, 'CR-7457-323', 1),
	(0029, 'AS-8327-317', 1),
	(0030, 'CR-7833-326', 1),
	(0031, 'AS-2908-319', 1),
	(0032, 'LC-8732-334', 1),
	(0033, 'LC-2981-335', 1),
	(0033, 'FT-9981-327', 1),
	(0033, 'LC-6280-337', 1),
	(0034, 'AS-2349-318', 3),
	(0035, 'LC-6280-337', 1),
	(0036, 'FT-9981-327', 1), 
	(0036, 'FT-8824-330', 1),
	(0036, 'FT-3423-332', 1),
	(0036, 'FT-2812-328', 1),
	(0036, 'FT-8732-329', 1),
	(0036, 'FT-2377-331', 1),
	(0037, 'AS-2349-318', 1),
	(0038, 'FT-2812-328', 1),
	(0039, 'CR-5965-321', 1),
	(0040, 'AS-2036-320', 1),
	(0041, 'LC-8732-334', 1),
	(0041, 'AS-5381-316', 1),
	(0042, 'CR-6738-322', 1),
	(0042, 'AS-2908-319', 1),
	(0042, 'LC-6280-337', 1),
	(0043, 'LC-8019-336', 1),
	(0043, 'CR-7833-326', 5),
	(0044, 'LC-2981-335', 1),
	(0045, 'CR-2903-324', 1),
	(0045, 'CR-7457-323', 1),
	(0046, 'AS-8327-317', 1),
	(0047, 'CR-7833-326', 1),
	(0048, 'AS-2908-319', 1),
	(0049, 'LC-8732-334', 1),
	(0050, 'LC-2981-335', 1),
	(0050, 'LC-6280-337', 1),
	(0050, 'FT-9981-327', 1),
	(0051, 'AS-2349-318', 3),
	(0052, 'LC-6280-337', 1),
	(0053, 'FT-8732-329', 1),
	(0053, 'FT-2377-331', 1),
	(0053, 'FT-2812-328', 1),
	(0053, 'FT-3423-332', 1),
	(0053, 'FT-8824-330', 1),
	(0053, 'FT-9981-327', 1),
	(0054, 'AS-2349-318', 1),
	(0055, 'FT-2812-328', 1),
	(0056, 'CR-5965-321', 1),
	(0057, 'AS-2036-320', 1),
	(0058, 'AS-5381-316', 1),
	(0058, 'LC-8732-334', 1);

SELECT * FROM TIPO_CLIENTE
SELECT * FROM FAMILIA_PRODUCTO
SELECT * FROM CLIENTE
SELECT * FROM VENDEDOR
SELECT * FROM PRODUCTO
SELECT * FROM VENTA
SELECT * FROM DETALLE_VENTA

--Conocer los productos (nombre) que no se han vendido en los últimos tres meses del año 2020

SELECT DISTINCT p.nombre	
FROM PRODUCTO p
LEFT JOIN DETALLE_VENTA dv ON p.idProducto = dv.idProducto
JOIN VENTA v ON dv.numVenta = v.numVenta
WHERE p.idProducto NOT IN (SELECT p.idProducto FROM DETALLE_VENTA dv
							JOIN PRODUCTO p on dv.idProducto = p.idProducto
							JOIN VENTA v on v.numVenta = dv.numVenta
							WHERE fechaVenta BETWEEN '2020-12-01' and '2020-12-31')

-- Conocer los productos (nombre) que no se han vendido durante al año 2020

SELECT p.nombre
FROM PRODUCTO p
WHERE p.idProducto NOT IN (
						SELECT dv.idProducto
						FROM VENTA v
						JOIN DETALLE_VENTA dv ON v.numVenta = dv.numVenta
						WHERE YEAR(fechaVenta) = 2020
						)

-- Conocer el monto total en ventas (valorVenta) realizada por cada vendedor

SELECT ve.nombre, SUM(valorVenta)
FROM VENTA v
JOIN VENDEDOR ve ON v.idVendedor = ve.idVendedor
GROUP BY ve.nombre

--Conocer los vendedores (nombre) que superaron el promedio en ventas del año 2019

SELECT nombre, AVG(valorVenta)
FROM VENDEDOR ve
JOIN VENTA v ON ve.idVendedor = v.idVendedor
WHERE YEAR(fechaVenta) = '2019'
GROUP BY nombre
HAVING AVG(valorVenta) > ( SELECT AVG(valorVenta) FROM VENTA )

-- Conocer los 5 productos (nombre) más vendidos (de acuerdo con la cantidad vendida) en el año 2020

SELECT TOP 5 p.nombre, SUM(cantidad)
FROM PRODUCTO p
JOIN DETALLE_VENTA dv on p.idProducto = dv.idProducto
JOIN VENTA v on v.numVenta = dv.numVenta
WHERE YEAR(fechaVenta) = 2020
GROUP BY p.nombre
ORDER BY 2 DESC

-- Conocer el monto total vendido ($.  valorVenta) en el mes de diciembre del 2020

SELECT SUM(valorVenta)
FROM VENTA
WHERE fechaVenta >= '2020-12-01' AND fechaVenta <= '2020-12-31'

-- Conocer los clientes que han realizado más de 1 compra en un mismo día

SELECT nombre, fechaVenta, COUNT(numVenta)
FROM CLIENTE c
JOIN VENTA v ON c.idCliente = v.idCliente
GROUP BY nombre, fechaVenta
HAVING COUNT(numVenta) > 1

-- Conocer el monto total en ventas (valorVenta) realizada por cada vendedor según su sexo (hombre / mujer)

SELECT sexo, SUM(valorVenta)
FROM VENTA v
JOIN VENDEDOR ve ON v.idVendedor = ve.idVendedor
GROUP BY sexo

-- Conocer los clientes del tipo Natural que han comprado productos de aseo

SELECT DISTINCT c.idCliente, c.nombre
FROM CLIENTE c
JOIN TIPO_CLIENTE tc on c.tipoCliente = tc.idTipo
JOIN VENTA v ON v.idCliente = c.idCliente
JOIN DETALLE_VENTA dv ON dv.numVenta = v.numVenta
JOIN PRODUCTO P ON p.idProducto = dv.idProducto
WHERE tipoCliente = 1 and idFmlia = 'as'

-- Conocer la familia(s) con menos de 5 productos

SELECT fp.idFmlia, COUNT(idProducto)
FROM FAMILIA_PRODUCTO fp
JOIN PRODUCTO p ON fp.idFmlia = p.idFmlia
GROUP BY fp.idFmlia
HAVING COUNT(idProducto) < 5

-- Listado de los productos (nombre) por familia de productos

SELECT DISTINCT familia, nombre
FROM PRODUCTO p
JOIN FAMILIA_PRODUCTO fp ON fp.idFmlia = p.idFmlia
ORDER BY 1
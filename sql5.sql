select * from tipo_cliente
insert into tipo_cliente(tipo_cli,nombre) values
	('001','consumidor final'),
	('002','cedula'),
	('003','pasaporte');

select * from cliente
insert into cliente(cod_cli,[nombre cliente],tipo_cli) values
	('0850106188','Nigell Jama','001'),
	('0850106189','Marcel Jama','002'),
	('0850106110','AAAAA BBBB','001'),
	('0850106111','CCCCC GGGG','003'),
	('0850106112','Francis Sepul','001'),
	('0850106113','Juan Yaucen','002'),
	('0850106114','Jhoel Caiza','001'),
	('0850106115','Geovanny Carvajal','003'),
	('0850106116','Stalin Alvarado','001'),
	('0850106117','Diego Campos','002'),
	('0850106118','Victor Ochoa','001'),
	('0850106119','Keyla Munioz','003'),
	('0850106120','Fiorella Amaguaya','001'),
	('0850106121','Cielo Morillo','002'),
	('0850106122','Dayana Naranjo','001'),
	('0850106123','Doris Villalva','003'),
	('0850106124','Alej Salazar','001'),
	('0850106125','HHHH HHHH','002'),
	('0850106126','NNNN JJJJJ','001'),
	('0850106127','ZZZZ AAAA','003');

SELECT * FROM vendedor
INSERT INTO vendedor(cod_ven,nombre) VALUES
	('0111111111','Steven Gonzalez'),
	('0111111112','Roberto Jimenez'),
	('0111111113','Andrea Moreta'),
	('0111111114','Omar Andi');

INSERT INTO orden_compra(fecha,valorTotal,cod_cli,vendedor) VALUES('2022-10-29',51.23,'0850106188','0111111111')
INSERT INTO orden_compra(fecha,valorTotal,cod_cli,vendedor) VALUES('2021-01-29',40.23,'0850106189','0111111112')
INSERT INTO orden_compra(fecha,valorTotal,cod_cli,vendedor) VALUES('2019-04-29',22.20,'0850106110','0111111113')
INSERT INTO orden_compra(fecha,valorTotal,cod_cli,vendedor) VALUES('2022-11-29',30.25,'0850106111','0111111114')
INSERT INTO orden_compra(fecha,valorTotal,cod_cli,vendedor) VALUES('2022-11-29',20.25,'0850106112','0111111112')
INSERT INTO orden_compra(fecha,valorTotal,cod_cli,vendedor) VALUES('2022-11-21',31.25,'0850106113','0111111114')
INSERT INTO orden_compra(fecha,valorTotal,cod_cli,vendedor) VALUES('2022-11-20',32.25,'0850106114','0111111111')
INSERT INTO orden_compra(fecha,valorTotal,cod_cli,vendedor) VALUES('2022-05-22',33.25,'0850106115','0111111114')
INSERT INTO orden_compra(fecha,valorTotal,cod_cli,vendedor) VALUES('2022-11-23',304.25,'0850106116','0111111114')
INSERT INTO orden_compra(fecha,valorTotal,cod_cli,vendedor) VALUES('2022-11-24',20.25,'0850106117','0111111111')
INSERT INTO orden_compra(fecha,valorTotal,cod_cli,vendedor) VALUES('2022-07-25',10.25,'0850106118','0111111112')
INSERT INTO orden_compra(fecha,valorTotal,cod_cli,vendedor) VALUES('2022-11-26',30.25,'0850106119','0111111113')
INSERT INTO orden_compra(fecha,valorTotal,cod_cli,vendedor) VALUES('2021-01-19',40.25,'0850106120','0111111112')
INSERT INTO orden_compra(fecha,valorTotal,cod_cli,vendedor) VALUES('2020-12-19',50.25,'0850106121','0111111111')
INSERT INTO orden_compra(fecha,valorTotal,cod_cli,vendedor) VALUES('2019-11-09',60.26,'0850106122','0111111113')
INSERT INTO orden_compra(fecha,valorTotal,cod_cli,vendedor) VALUES('2017-05-01',70.25,'0850106123','0111111114')
INSERT INTO orden_compra(fecha,valorTotal,cod_cli,vendedor) VALUES('2018-04-02',80.24,'0850106124','0111111113')
INSERT INTO orden_compra(fecha,valorTotal,cod_cli,vendedor) VALUES('2015-03-03',90.23,'0850106125','0111111114')
INSERT INTO orden_compra(fecha,valorTotal,cod_cli,vendedor) VALUES('2011-02-04',00.22,'0850106126','0111111112')
INSERT INTO orden_compra(fecha,valorTotal,cod_cli,vendedor) VALUES('2012-01-05',30.21,'0850106127','0111111111')


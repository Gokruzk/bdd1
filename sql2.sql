--NIGELL MARCEL JAMA OYARVIDE - 7046
--Crear base de datos
create database BD4
--Usar base de datos
use BD4
--Crear tablas
create table tipo_cliente(
	tipo_cli varchar(10),
	nombre varchar(100) not null,
	primary key(tipo_cli)
);
create table cliente(
	cod_cli varchar(10),		
	"nombre cliente" varchar(100) not null,
	tipo_cli varchar(10) not null,
	primary key(cod_cli),
	foreign key(tipo_cli) references tipo_cliente(tipo_cli)
);
create table vendedor(
	cod_ven varchar(10),
	nombre varchar(100) not null,
	primary key(cod_ven)
);
create table orden_compra(
	num_orden int identity(1,1),
	fecha date not null,
	valorTotal money not null,
	cod_cli varchar(10) not null,
	vendedor varchar (10) not null,
	primary key(num_orden),
	foreign key(vendedor) references vendedor(cod_ven)
);
create table producto(
	cod_producto int,
	"nombre producto" varchar(100) not null,
	descripcion varchar(100) not null,
	primary key(cod_producto) 
);
create table compra_producto(
	num_orden int,
	cod_producto int not null,
	cantidad int not null,
	primary key(num_orden, cod_producto),
	foreign key(cod_producto) references producto(cod_producto),
	foreign key(num_orden) references orden_compra(num_orden)
);
--Modificar la estructura de una de las tablas de la base de datos (ALTER) 
--Agrega dos columnas (considerar check de validaci�n) a la tabla cliente: genero y fecha_nacimiento. 
alter table cliente add genero char(1), fecha_nacimiento date;
alter table cliente add constraint CK_genero check(genero = 'M' or genero = 'F');
alter table cliente add constraint CK_fechaNac check(fecha_nacimiento < getDate());
--Agregar la columna precio_unitario en la tabla producto.
alter table producto add precio_unitario money;

--Eliminar la columna fecha_nacimiento de la tabla cliente
ALTER TABLE cliente drop constraint CK_fechaNac;
alter table cliente drop column fecha_nacimiento;
--Eliminar una de las tablas (DROP) creadas
drop table cliente;
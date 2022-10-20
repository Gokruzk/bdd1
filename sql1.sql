--create database BD4
--use BD4
/*
create table ordenes(
	num_orden int primary key,
	fecha_orden datetime,
	nombre_cliente varchar(80)
);*/

create table orden_item(
	num_orden int not null,
	item_num datetime,
	PRIMARY KEY (num_orden, item_num),
	foreign key (num_orden) references ordenes(num_orden) on delete cascade
);

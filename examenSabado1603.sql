use master;

create database DanielPromociones;

use DanielPromociones;

drop table promociones;

create table promociones (
	id_promociones int identity(1,1),
	nombre_promociones varchar(100),
	descripcion varchar(100),
	estado char(1), -- (a) activo, (i) inactivo
	precio decimal(10, 2),
	cantidad int
	
);


create procedure insercion 
as
begin
-- Insertar registros en la tabla de promociones
insert into promociones (nombre_promociones, descripcion, precio, cantidad, estado) values ('Oferta de verano', 'Descuento en productos de playa', 20.50, 50, 'a');
insert into promociones (nombre_promociones, descripcion, precio, cantidad, estado) values ('Descuento especial', 'Promoci�n de fin de semana', 15.75, 30, 'a');
insert into promociones (nombre_promociones, descripcion, precio, cantidad, estado) values ('Oferta rel�mpago', 'Descuento por tiempo limitado', 10.99, 20, 'a');
insert into promociones (nombre_promociones, descripcion, precio, cantidad, estado) values ('Gran liquidaci�n', 'Productos rebajados hasta agotar existencias', 5.25, 100, 'a');
insert into promociones (nombre_promociones, descripcion, precio, cantidad, estado) values ('Descuento de primavera', 'Oferta en productos para jard�n', 18.75, 40, 'a');
insert into promociones (nombre_promociones, descripcion, precio, cantidad, estado) values ('Promoci�n especial', 'Descuento en productos seleccionados', 12.99, 25, 'a');
insert into promociones (nombre_promociones, descripcion, precio, cantidad, estado) values ('Oferta de oto�o', 'Descuento en productos de temporada', 22.50, 60, 'a');
insert into promociones (nombre_promociones, descripcion, precio, cantidad, estado) values ('Descuento por compra', 'Oferta al comprar cierta cantidad de productos', 8.25, 35, 'a');
insert into promociones (nombre_promociones, descripcion, precio, cantidad, estado) values ('Oferta navide�a', 'Descuento en productos festivos', 30.99, 15, 'a');
insert into promociones (nombre_promociones, descripcion, precio, cantidad, estado) values ('Descuento de invierno', 'Promoci�n en productos para el fr�o', 25.75, 45, 'a');

end;

exec insercion

select * from promociones 

delete promociones;

delete from promociones where id_promociones = 10;


SELECT * FROM promociones WHERE nombre_promociones LIKE '%s%'
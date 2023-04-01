create database pizza_al_paso;

use pizza_al_paso;

create table tbusuario(
idUsuario int (11) auto_increment primary key,
nombre varchar(30) not null,
apellido varchar(30) not null,
usuario varchar(15) not null,
contraseña varchar(15) not null,
telefono varchar(15) not null);

select * from tbusuario;

truncate table tbusuario;

insert into tbusuario(nombre, apellido, usuario, contraseña, telefono)
values ("Administrador","Propietario","admin","admin","920207010");

create table tbcliente(
idCliente int (11) auto_increment primary key,
nombre varchar(30) not null,
apellido varchar(30) not null,
dni varchar(15) not null,
telefono varchar(15) not null,
direccion varchar(25) not null);

select * from tbcliente;

truncate table tbcliente;

create table tbcategoria(
idCategoria int (11) auto_increment primary key,
descripcion varchar(100) not null);

select * from tbcategoria;

truncate table tbcategoria;

create table tbproducto(
idProducto int (11) auto_increment primary key,
nombre varchar(30) not null,
cantidad int(11) not null,
precio double(10,2) not null,
descripcion varchar(100) not null,
porcentajeIGV int(2) not null,
idCategoria int (11) not null);

select * from tbproducto;

truncate table tbproducto;

create table tbventa(
idVenta int (11) auto_increment primary key,
idCliente int (11) not null,
valorPagar double(10,2) not null,
fechaVenta date  not null);

select * from tbventa;

truncate table tbventa;

create table tbdetalleventa(
idDetalleVenta int (11) auto_increment primary key,
idVenta int (11) not null,
idProducto int (11) not null,
cantidad int (11) not null,
precioUnitario double(10,2) not null,
subTotal double(10,2) not null,
igv double(10,2) not null,
totalPagar double(10,2) not null);

select * from tbdetalleventa;

truncate table tbdetalleventa;
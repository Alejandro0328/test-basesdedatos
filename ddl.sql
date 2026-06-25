create database libreria;
use libreria;
create table libro (
    cod_libro int primary key auto_increment,
    isbn varchar(20) unique,
    nombre varchar(20) not null,
    fecha_publi varchar(20) not null,
    categoria varchar(20) not null
);

create table autor (
    cod_autor int primary key auto_increment,
    nombre varchar(30)
);

create table ejemplares(
    cod_ejemplar int primary key auto_increment,
    cod_libro int not null,
    stock int not null ,
    editorial varchar(20)not null,
    foreign key (cod_libro) references libro(cod_libro),
    precio int not null 
);

create table cliente(
    cod_cliente int primary key auto_increment,
    nombre varchar(30),
    correo varchar(50),
    direccion varchar(100)
);

create table pedido(
    cod_pedido int primary key auto_increment,
    cod_ejemplar int not null,
    cod_cliente int not null,
    metodo_pago varchar(20),
    monto int not null,
    cantidad_stock int not null,
    foreign key (cod_ejemplar) references ejemplares(cod_ejemplar),
    foreign key (cod_cliente) references cliente(cod_cliente)
);

create table autor_libro(
    cod_autor int primary key,
    cod_libro int,
    foreign key (cod_autor) references autor(cod_autor),
    foreign key (cod_libro) references libro(cod_libro) 
);

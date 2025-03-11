create database fleature;
use fleature;

create table mesa (
    id int primary key auto_increment,
    localizacao int not null,
    hourValue double not null
);

create table cliente (
    id int primary key auto_increment,
    nome varchar(100) not null,
    email varchar(100) not null
);

create table produto (
    id int primary key auto_increment,
    nome varchar(100) not null,
    preco double not null
);

create table agedamento (
    id int primary key auto_increment,
    id_cliente int not null,
    id_produto int not null,
    id_mesa int not null,
    data date not null,
    status enum('reserved', 'canceled', 'open', 'payment', 'closed') not null,
    foreign key (id_cliente) references cliente(id),
    foreign key (id_produto) references produto(id),
    foreign key (id_mesa) references mesa(id)
);

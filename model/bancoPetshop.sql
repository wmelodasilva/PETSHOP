create database petshop;
use petshop;

create table cadastro (
nome varchar (300) not null,
dt_nascimento date not null,
sexo varchar (20),
cpf varchar (11) not null,
email varchar (100) not null,
senha varchar (20) not null,
telefone varchar (17) not null,
primary key (cpf)
foreign key(cep_id));

create table CEP(
    endereço varchar(150) not null,
    cep_id int not null primary key,
    UF char(2);
)

create table cliente(
    id_cliente int not null,
    nome varchar(300) not null,
    email varchar(100) not null,
    primary key(id),
    foreign key(cpf);
)

create table login(
    email varchar(100) not null,
    senha varchar(20) not null,
    primary key(email),
    foreign(id_cliente);
);
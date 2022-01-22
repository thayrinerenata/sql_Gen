create database db_farmacia_do_bem;
use db_farmacia_do_bem;
create table tb_categoria(
	id bigint (5) auto_increment,
    funcao varchar(50),
    ()
);

create table tb_produto(
	id bigint (5) auto_increment,
    nome varchar (30),
    preco float (10),
    quantidade varchar (50),
    
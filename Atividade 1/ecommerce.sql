create database db_ecommerce;
use db_ecommerce;
create table tb_produtos(
	id bigint (5) auto_increment,
    nome varchar (20) not null,
    preco float (11),
	categoria varchar (30),
    tamanho varchar (30),
    primary key (id)
);
insert into tb_produtos(nome, preco, categoria, tamanho) values ("Creme de hidratação", 15.9, "Produtos de cabelo", "100g");
insert into tb_produtos(nome, preco, categoria, tamanho) values ("Óleo de argan", 15.9, "Produtos de cabelo", "50ml");
insert into tb_produtos(nome, preco, categoria, tamanho) values ("Creme de pentear", 20, "Produtos de cabelo", "1kg");
insert into tb_produtos(nome, preco, categoria, tamanho) values ("Tolha microfibra", 12, "Banho", "20x30cm");
insert into tb_produtos(nome, preco, categoria, tamanho) values ("Escova polvo", 17, "Produtos de cabelo", "50g");
insert into tb_produtos(nome, preco, categoria, tamanho) values ("Creme de nutrição", 15.9, "Produtos de cabelo", "100g");
insert into tb_produtos(nome, preco, categoria, tamanho) values ("Creme de recons", 15.9, "Produtos de cabelo", "100g");
insert into tb_produtos(nome, preco, categoria, tamanho) values ("Pente dentes largos", 5.9, "Produtos de cabelo", "50g");
insert into tb_produtos(nome, preco, categoria, tamanho) values ("Grampos pretos", 20, "Produtos de cabelo", "300g");
select * from tb_produtos where preco > 500;
select * from tb_produtos where preco < 500;
update tb_produtos set preco = 30 where id = 8;
update tb_produtos set preco = 510 where id = 4;
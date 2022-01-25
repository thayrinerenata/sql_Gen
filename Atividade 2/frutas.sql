create database db_cidade_das_frutas;
use db_cidade_das_frutas;
create table tb_categoria(
	id bigint auto_increment primary key,
    tipo varchar (50),
    refrigeracao varchar (10), 
    descascado varchar (10)
);
create table tb_produto(
	id bigint auto_increment primary key,
    nome varchar (50),
    quantidade int (10),
    preco float (10),
    fk_id_catpro bigint, foreign key (fk_id_catpro) references tb_categoria (id)
);

insert into tb_categoria (tipo, refrigeracao, descascado) values ("fruta", "sim", "sim");
insert into tb_categoria (tipo, refrigeracao, descascado) values ("fruta", "não", "não");
insert into tb_categoria (tipo, refrigeracao, descascado) values ("legumes", "sim", "sim");
insert into tb_categoria (tipo, refrigeracao, descascado) values ("legumes", "não", "não");
insert into tb_categoria (tipo, refrigeracao, descascado) values ("verduras", "sim", "sim");
insert into tb_categoria (tipo, refrigeracao, descascado) values ("verduras", "não", "não");

insert into tb_produto (nome, quantidade, preco) values ("laranja", 10, 1.5);
insert into tb_produto (nome, quantidade, preco) values ("carambola", 3, 5);
insert into tb_produto (nome, quantidade, preco) values ("chuchu", 1, 5);
insert into tb_produto (nome, quantidade, preco) values ("batata", 3, 2);
insert into tb_produto (nome, quantidade, preco) values ("couve", 2, 4.5);
insert into tb_produto (nome, quantidade, preco) values ("acelga", 2, 7.5);

select * from tb_produto where preco > 50;
select * from tb_produto where preco = 3 and preco = 60;
select * from tb_produto where nome like 'C%';
select p.id, p.quantidade from tb_produto p inner join tb_categoria c on c.id;
select * from tb_categoria where tipo = "verduras";

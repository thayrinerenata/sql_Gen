create database db_farmacia_do_bem;
use db_farmacia_do_bem;
create table tb_categoria(
	id bigint primary key not null auto_increment,
    medicamentos varchar (50),
    perfumaria varchar (50)
);

create table tb_produto(
	id bigint primary key not null auto_increment,
    nome varchar (30),
    quantidade int (10),
    desconto varchar (50), 
	preco float (10),
    convenio varchar (50),
    fk_id_catepro bigint,
    foreign key (fk_id_catepro) references tb_categoria (id)
);

insert into tb_categoria(medicamentos, perfumaria) values ("genérico", "não");
insert into tb_categoria(medicamentos, perfumaria) values ("não", "beleza capilar");
insert into tb_categoria(medicamentos, perfumaria) values ("controlados", "não");
insert into tb_categoria(medicamentos, perfumaria) values ("não", "higiene bucal");
insert into tb_categoria(medicamentos, perfumaria) values ("calmante para cóliga", "infantil");

insert into tb_produto(nome, quantidade, desconto, preco, convenio) values ("paracetamol", 4, "sim", 3, "não");
insert into tb_produto(nome, quantidade, desconto, preco, convenio) values ("shampoo hidratante", 1, "sim", 30, "não");
insert into tb_produto(nome, quantidade, desconto, preco, convenio) values ("diazepam", 3, "sim", 15, "sim");
insert into tb_produto(nome, quantidade, desconto, preco, convenio) values ("colgate sensitive", 3, "não", 21, "não");
insert into tb_produto(nome, quantidade, desconto, preco, convenio) values ("colic calm", 10, "sim", 150, "sim");
insert into tb_produto(nome, quantidade, desconto, preco, convenio) values ("dorflex", 1, "não", 5, "não");
insert into tb_produto(nome, quantidade, desconto, preco, convenio) values ("creme de pentear", 3, "sim", 15, "não");
insert into tb_produto(nome, quantidade, desconto, preco, convenio) values ("bapantol", 1, "não", 30, "não");
    
select * from tb_produto where preco > 50;
select * from tb_produto where preco = 3 and preco = 60;
select * from tb_produto where nome like 'B%';
select p.id, p.nome, p.preco from tb_produto p inner join tb_categoria c on c.perfumaria;
select * from tb_categoria where perfumaria = "beleza capilar";
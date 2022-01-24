create database db_pizzaria_legal;
use db_pizzaria_legal;
create table tb_pizza(
	id bigint (5) auto_increment primary key,
    sabor varchar (50),
    tamanho varchar (50),
    adicional varchar (50),
    quantidade int (20),  
    preco float (10),
	fk_id_catepiz bigint,
    foreign key (fk_id_catepiz) references tb_categoria (id)
);
create table tb_categoria(
	id bigint (5) auto_increment primary key,
    massa varchar (50),
    tipo varchar (50),
    borda varchar (50)
);   

insert into tb_categoria(massa, tipo, borda) values ("tradicional", "doce", "comum");
insert into tb_categoria(massa, tipo, borda) values ("integral", "salgada", "catupiry");
insert into tb_categoria(massa, tipo, borda) values ("vegana", "doce", "comum");
insert into tb_categoria(massa, tipo, borda) values ("tradicional", "salgada", "catupiry");
insert into tb_categoria(massa, tipo, borda) values ("integral", "salgada", "catupiry");

insert into tb_pizza(sabor, tamanho, adicional, quantidade, preco) values ("milho verde", "grande", "não", 2, 60);
insert into tb_pizza(sabor, tamanho, adicional, quantidade, preco) values ("brócolis II", "pequena", "catupiry",1 ,17.5);
insert into tb_pizza(sabor, tamanho, adicional, quantidade, preco) values ("fiorentina", "grande", "não", 1, 40);
insert into tb_pizza(sabor, tamanho, adicional, quantidade, preco) values ("calabresa", "grande", "cebola", 1, 30);
insert into tb_pizza(sabor, tamanho, adicional, quantidade, preco) values ("brigadeiro", "pequena", "não", 1, 20);
insert into tb_pizza(sabor, tamanho, adicional, quantidade, preco) values ("carne seca", "grande", "mussarela", 2, 90);
insert into tb_pizza(sabor, tamanho, adicional, quantidade, preco) values ("banana especial", "pequena", "canela", 1, 20);
insert into tb_pizza(sabor, tamanho, adicional, quantidade, preco) values ("pepperone", "pequena", "não", 2, 35);

select * from tb_pizza where preco > 45;
select * from tb_pizza where preco = 29 and preco = 60;
select * from tb_pizza where sabor like 'C%';
select p.id, p.sabor, p.quantidade from tb_pizza p inner join tb_categoria c on c.id;
select * from tb_categoria where tipo = "doce";
create database db_rh;
use db_rh;
create table tb_funcionaries(
	id bigint (5) auto_increment,
    cpf varchar (11),
    nome varchar(50) not null,
    telefone varchar (11),
    endereco varchar (50),
    primary key (id)
);
insert into tb_funcionaries(cpf, nome, telefone, endereco) values (52097954030, "Policarpo Silva", 11997708866, "Rua Arminda Costa n 55");
insert into tb_funcionaries(cpf, nome, telefone, endereco) values (31641998059, "Florentina Souza", 11955997368, "Rua Floresta Negra n 2");
insert into tb_funcionaries(cpf, nome, telefone, endereco) values (02507871059, "Patricia Fernandes", 11935198321, "Quadra 2 s/n");
insert into tb_funcionaries(cpf, nome, telefone, endereco) values (90341405043, "Ziraldo Costa", 11971068109, "Rua Caspar n 3100");
insert into tb_funcionaries(cpf, nome, telefone, endereco) values (98429267026, "Marisa Marques", 11930709918, "Avenida um n 100");
alter table tb_funcionaries add salario float(20);
select * from tb_funcionaries;
update tb_funcionaries set salario = 3000 where id = 1;  
select * from tb_funcionaries;
update tb_funcionaries set salario = 5000 where id = 2;
update tb_funcionaries set salario = 1800 where id = 3;
update tb_funcionaries set salario = 5500 where id = 4;
update tb_funcionaries set salario = 2100 where id = 5;
select * from tb_funcionaries where salario > 2000;
select * from tb_funcionaries where salario < 2000;
update tb_funcionaries set salario = 4500 where id = 4 ;
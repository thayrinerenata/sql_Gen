create database db_escola;
use db_escola;
create table tb_alunos(
	id bigint (5) auto_increment,
    nome varchar (50) not null,
    serie varchar (10),
	materia varchar (30),
    nota float (3),
    primary key (id)
);
insert into tb_alunos(nome, serie, materia, nota) values ("Paulo", "6serie", "matemática", 7);
insert into tb_alunos(nome, serie, materia, nota) values ("Maria", "1serie", "português", 10);
insert into tb_alunos(nome, serie, materia, nota) values ("Ricardo", "9serie", "artes", 10);
insert into tb_alunos(nome, serie, materia, nota) values ("Carlos", "2serie", "inglês", 5);
insert into tb_alunos(nome, serie, materia, nota) values ("Cecília", "3serie", "ciências", 6.5);
insert into tb_alunos(nome, serie, materia, nota) values ("Renata", "5serie", "física", 8);
insert into tb_alunos(nome, serie, materia, nota) values ("Luiza", "3serie", "química", 9);
insert into tb_alunos(nome, serie, materia, nota) values ("João", "4serie", "geografia", 4);
select * from tb_alunos where nota > 7;
select * from tb_alunos where nota < 7;
update tb_alunos set nota = 5 where id = 5;
select * from tb_alunos;
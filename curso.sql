create database db_cursoDaMinhaVida;
use db_cursoDaMinhaVida;
create table tb_categoria(
	id bigint primary key not null auto_increment,
    nome_categoria varchar (50),
    modalidade_categoria varchar (50),
    fk_id_curso bigint,
    foreign key (fk_id_curso) references tb_curso (id_curso)
);
create table tb_curso(
	id_curso bigint primary key not null auto_increment,
    nome_curso varchar (50),
    duracao_curso varchar (50),
    modalidade_curso varchar (50),
    preco_curso float (10)
);
insert into tb_categoria (nome_categoria, modalidade_categoria) values ("", "");

  
create database db_generation_game_online;
use db_generation_game_online;
create table tb_classe(
	id bigint (5) auto_increment,
    nome varchar (30),
    fase int,    
    primary key (id)
);
create table tb_personagem(
	id bigint (5) auto_increment,
    nome varchar (30),
    caracteristica varchar (50),
    jogo varchar (50),
    categoria varchar (50),    
    primary key (id),
    fk_id_classe bigint,
    foreign key (fk_id_classe) references tb_classe (id)
);   
insert into tb_classe(nome, fase) values ("José", 3);
insert into tb_classe(nome, fase) values ("Felipe", 1);
insert into tb_classe(nome, fase) values ("Ana", 5);
insert into tb_classe(nome, fase) values ("Camila", 5);
insert into tb_classe(nome, fase) values ("Marcia", 2);
alter table tb_personagem add poder float(20);
insert into tb_personagem(nome, caracteristica, jogo, categoria, poder) values ("Sonick", "Rapidez", "Sonick", "Ação", 3000);
insert into tb_personagem(nome, caracteristica, jogo, categoria, poder) values ("Mickey", "Fofura", "O mundo de Mickey", "Aventura", 500);
insert into tb_personagem(nome, caracteristica, jogo, categoria, poder) values ("Sub Zero", "Congelante", "Mortal Kombat", "Luta", 1000);
insert into tb_personagem(nome, caracteristica, jogo, categoria, poder) values ("Goku", "Raio de fogo", "Dragonbol", "Luta", 3500);
insert into tb_personagem(nome, caracteristica, jogo, categoria, poder) values ("Ronaldo", "Gol de cobertura", "Fifa", "Futebol", 4000);
insert into tb_personagem(nome, caracteristica, jogo, categoria, poder) values ("Aldo", "Soco forte", "UFC", "Luta", 5500);
insert into tb_personagem(nome, caracteristica, jogo, categoria, poder) values ("Cam", "Rebolado", "Just Dance", "Dança", 2500);
insert into tb_personagem(nome, caracteristica, jogo, categoria, poder) values ("Eu", "Coluna de diamantes", "Columbs", "Jogos de tabuleiro", 1500);
alter table tb_personagem add fase int (20);
select * from tb_personagem where ataque > 2000;
select * from tb_personagem where defesa = 1000 and defesa = 2000;
drop database db_generation_game_online;
 
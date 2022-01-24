create database db_generation_game_online;
use db_generation_game_online;
create table tb_classe(
	id bigint primary key not null auto_increment,
    fase int (20)
);
create table tb_personagem(
	id bigint  primary key not null auto_increment,
    nome varchar (30),
    caracteristica varchar (50),
    jogo varchar (50),
    categoria varchar (50), 
	ataque varchar (50),
    defesa varchar (50),
    poder float (20),
    fk_id_per bigint,
    foreign key (fk_id_per) references tb_classe (id)
);   
insert into tb_classe(fase) values (3);
insert into tb_classe(fase) values (1);
insert into tb_classe(fase) values (5);
insert into tb_classe(fase) values (5);
insert into tb_classe(fase) values (2);

insert into tb_personagem(nome, caracteristica, jogo, categoria, ataque, defesa) values ("Sonick", "Rapidez", "Sonick", "Ação", 3000, 2000);
insert into tb_personagem(nome, caracteristica, jogo, categoria, ataque, defesa) values ("Mickey", "Fofura", "O mundo de Mickey", "Aventura", 500, 100);
insert into tb_personagem(nome, caracteristica, jogo, categoria, ataque, defesa) values ("Sub Zero", "Congelante", "Mortal Kombat", "Luta", 1000, 500);
insert into tb_personagem(nome, caracteristica, jogo, categoria, ataque, defesa) values ("Goku", "Raio de fogo", "Dragonbol", "Luta", 3500, 300);
insert into tb_personagem(nome, caracteristica, jogo, categoria, ataque, defesa) values ("Ronaldo", "Gol de cobertura", "Fifa", "Futebol", 4000, 50);
insert into tb_personagem(nome, caracteristica, jogo, categoria, ataque, defesa) values ("Aldo", "Soco forte", "UFC", "Luta", 5500, 2000);
insert into tb_personagem(nome, caracteristica, jogo, categoria, ataque, defesa) values ("Cam", "Rebolado", "Just Dance", "Dança", 2500, 2000);
insert into tb_personagem(nome, caracteristica, jogo, categoria, ataque, defesa) values ("Eu", "Coluna de diamantes", "Columbs", "Jogos de tabuleiro", 1500, 1500);

select * from tb_personagem where ataque > 2000;
select * from tb_personagem where defesa = 1000 and defesa = 2000;

drop database db_generation_game_online;

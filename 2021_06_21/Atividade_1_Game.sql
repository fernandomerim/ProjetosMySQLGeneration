create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(

id bigint(5) auto_increment,
categoria varchar(255) not null,
arma varchar(255) not null,
primary key (id)
);

insert into tb_classe (categoria, arma) values ("Arqueiro", "Arco e flecha");
insert into tb_classe (categoria, arma) values ("Mago", "Magia");
insert into tb_classe (categoria, arma) values ("Lutador", "Mãos");
insert into tb_classe (categoria, arma) values ("Assassino", "Arma branca");
insert into tb_classe (categoria, arma) values ("Atirador", "Arma de fogo");

select * from tb_classe;

create table tb_personagem(

id bigint(5) auto_increment,
nome varchar(255) not null,
ataque bigint(10) not null,
defesa bigint(10) not null,
categoria_id bigint(10) not null,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_classe (id)
);

insert into tb_personagem (nome, ataque, defesa, categoria_id) values ("Cassiopeia", 2200, 1200, 2);
insert into tb_personagem (nome, ataque, defesa, categoria_id) values ("Corki", 2400, 1500, 5);
insert into tb_personagem (nome, ataque, defesa, categoria_id) values ("Ashe", 2600, 1200, 1);
insert into tb_personagem (nome, ataque, defesa, categoria_id) values ("LeBlanc", 2600, 1300, 2);
insert into tb_personagem (nome, ataque, defesa, categoria_id) values ("Malphite", 1600, 2500, 3);
insert into tb_personagem (nome, ataque, defesa, categoria_id) values ("Talon", 3000, 1450, 4);
insert into tb_personagem (nome, ataque, defesa, categoria_id) values ("Poppy", 1400, 2600, 3);
insert into tb_personagem (nome, ataque, defesa, categoria_id) values ("Slade", 2700, 900, 1);

select * from tb_personagem;

-- Faça um select que retorne os personagens com o poder de ataque maior do que 2000.
select * from tb_personagem where ataque > 2000;

-- Faça um select trazendo  os personagens com poder de defesa entre 1000 e 2000.
select * from tb_personagem where defesa between 1000 and 2000;

-- Faça um select  utilizando LIKE buscando os personagens com a letra C.
select * from tb_personagem where nome like "C%";

-- Faça um um select com Inner join entre  tabela classe e personagem.
select * from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.categoria_id;

-- Faça um select onde traga todos os personagem de uma classe específica (exemplo todos os personagens que são arqueiros).
select * from tb_personagem where categoria_id =1; -- Exibindo arqueiros



create database db_cidade_das_frutas;

use db_cidade_das_frutas;

create table tb_categoria(
id bigint auto_increment,
categoria varchar(255) not null,
ativo boolean not null,
primary key (id)
);

insert into tb_categoria (categoria, ativo) values ("Doces",true);
insert into tb_categoria (categoria, ativo) values ("Semiácidas",true);
insert into tb_categoria (categoria, ativo) values ("Ácidas",true);
insert into tb_categoria (categoria, ativo) values ("Hiper-hídricas",true);
insert into tb_categoria (categoria, ativo) values ("Oleaginosas",true);

select * from tb_categoria;

create table tb_produtos (
id bigint auto_increment,
nome varchar (255) not null,
cor varchar (255) not null,
preco decimal(6,2) not null,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_produtos (nome, cor, preco, categoria_id) values ("Banana - 5kl", "Amarela", 15.00, 1);
insert into tb_produtos (nome, cor, preco, categoria_id) values ("Goiaba - 10kl", "Verde", 55.00, 2);
insert into tb_produtos (nome, cor, preco, categoria_id) values ("Uva - 10kl", "Roxo", 70.00, 3);
insert into tb_produtos (nome, cor, preco, categoria_id) values ("Melão - 1un", "Amarelo", 6.00, 4);
insert into tb_produtos (nome, cor, preco, categoria_id) values ("Castanho-do-pará- 1kl", "Marrom", 60.00, 5);
insert into tb_produtos (nome, cor, preco, categoria_id) values ("Caju - 8kl", "Vermelho", 56.00, 2);
insert into tb_produtos (nome, cor, preco, categoria_id) values ("Maracujá - 2kl", "Amarelo", 8.00, 2);
insert into tb_produtos (nome, cor, preco, categoria_id) values ("Morango - 1kl", "Vermelho", 10.00, 3);

select * from tb_produtos;

-- Faça um select que retorne os Produtos com o valor maior do que 50 reais.
select * from tb_produtos where preco > 50.00;

-- Faça um select trazendo  os Produtos com valor entre 3 e 60 reais.
select * from tb_produtos where preco between 3.00 and 60.00;

-- Faça um select  utilizando LIKE buscando os Produtos com a letra C.
select * from tb_produtos where nome like "C%";

-- Faça um um select com Inner join entre  tabela categoria e produto.
select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;

-- Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são aves ou legumes).
select * from tb_produtos where categoria_id = 2; -- Exibindo Frutas Semiácidas
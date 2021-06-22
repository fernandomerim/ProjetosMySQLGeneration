create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(

id bigint(5) auto_increment,
categoria varchar(255) not null,
borda boolean not null,
primary key (id)
);

insert into tb_categoria (categoria, borda) values ("Salgada", true);
insert into tb_categoria (categoria, borda) values ("Doce", true);
insert into tb_categoria (categoria, borda) values ("Vegana", true);
insert into tb_categoria (categoria, borda) values ("Apimentada", true);
insert into tb_categoria (categoria, borda) values ("Light", true);

select * from tb_categoria;

create table tb_pizza(
id bigint(5) auto_increment,
sabor varchar(255) not null,
preco decimal(4,2) not null,
tamanho varchar(255) not null,
categoria_id bigint(10) not null,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_pizza (sabor, preco, tamanho, categoria_id) values ("Mussarela", 35.00, "Grande", 1);
insert into tb_pizza (sabor, preco, tamanho, categoria_id) values ("Calabresa", 42.00, "Grande", 1);
insert into tb_pizza (sabor, preco, tamanho, categoria_id) values ("Nutella", 58.00, "Grande", 2);
insert into tb_pizza (sabor, preco, tamanho, categoria_id) values ("Prestígio", 47.00, "Grande", 2);
insert into tb_pizza (sabor, preco, tamanho, categoria_id) values ("Vegana", 27.00, "Pequena", 3);
insert into tb_pizza (sabor, preco, tamanho, categoria_id) values ("Chili", 44.00, "Grande", 4);
insert into tb_pizza (sabor, preco, tamanho, categoria_id) values ("Light", 49.00, "Grande", 5);
insert into tb_pizza (sabor, preco, tamanho, categoria_id) values ("À moda da casa", 62.00, "Grande", 1);

select * from tb_pizza;

-- Faça um select que retorne os Produtos com o valor maior do que 45 reais.
select * from tb_pizza where preco > 45;

-- Faça um select trazendo  os Produtos com valor entre 29 e 60 reais.
select * from tb_pizza where preco between 29 and 60;

-- Faça um select  utilizando LIKE buscando os Produtos com a letra C.
select * from tb_pizza where sabor like "C%";

-- Faça um um select com Inner join entre  tabela categoria e pizza.
select * from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id;

-- Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são pizza doce).
select * from tb_pizza where categoria_id =1; -- Exibindo pizza salgada

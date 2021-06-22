create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

create table tb_categoria(
	id bigint (5) auto_increment,
    departamento varchar (255) not null,
    disponibilidade varchar (255) not null,
primary key (id)
);

insert into tb_categoria (departamento, disponibilidade) values ("Moveis", "Loja on-line");
insert into tb_categoria (departamento, disponibilidade) values ("Decoração", "Loja on-line");
insert into tb_categoria (departamento, disponibilidade) values ("Tintas", "Loja Física");
insert into tb_categoria (departamento, disponibilidade) values ("Materiais de Construção", "Loja Física");
insert into tb_categoria (departamento, disponibilidade) values ("Pisos e revestimentos", "Loja Física");

select * from tb_categoria;

create table tb_produto(
id bigint auto_increment,
nome varchar(255) not null,
pagamento varchar(255) not null,
preco decimal(7,2) not null,
categoria_id bigint not null,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_produto (nome, pagamento, preco, categoria_id) values ("Cadeira de plástico", "Cartão - Boleto - PIX", 45.00, 1);
insert into tb_produto (nome, pagamento, preco, categoria_id) values ("Cortina em poliéster", "Cartão - Boleto - PIX", 55.00, 2);
insert into tb_produto (nome, pagamento, preco, categoria_id) values ("Tinta acrílica", "Dinheiro - Cartão", 90.00, 3);
insert into tb_produto (nome, pagamento, preco, categoria_id) values ("Cimento", "Dinheiro - Cartão", 30.00, 4);
insert into tb_produto (nome, pagamento, preco, categoria_id) values ("Porcelenato polido", "Dinheiro - Cartão", 35.00, 5);
insert into tb_produto (nome, pagamento, preco, categoria_id) values ("Bloco cerâmico", "Dinheiro - Cartão", 3.50, 4);
insert into tb_produto (nome, pagamento, preco, categoria_id) values ("Piso lâminado", "Dinheiro - Cartão", 79.00, 5);
insert into tb_produto (nome, pagamento, preco, categoria_id) values ("Mesa de plástico", "Cartão - Boleto - PIX", 70.00, 1);

select * from tb_produto;

-- Faça um select que retorne os Produtos com o valor maior do que 50 reais.
select * from tb_produto where preco > 50.00;

-- Faça um select trazendo  os Produtos com valor entre 3 e 60 reais.
select * from tb_produto where preco between 3.00 and 60.00;

-- Faça um select  utilizando LIKE buscando os Produtos com a letra C.
select * from tb_produto where nome like "C%";

-- Faça um um select com Inner join entre  tabela categoria e produto.
select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;

-- Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são da categoria hidráulica).
select * from tb_produto where categoria_id = 5; -- Exibindo Pisos e Revestimentos




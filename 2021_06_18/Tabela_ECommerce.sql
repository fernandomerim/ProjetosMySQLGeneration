create database db_ecommerce;

use db_ecommerce;

create table tb_produtos (

id bigint auto_increment,
produto varchar(255) not null,
fabricante varchar(255) not null,
modelo varchar(255) not null,
sistema varchar(255) not null,
armazenamento varchar(255) not null,
cor varchar(255) not null,
preco decimal(6,2) not null,
primary key (id)
);

insert into tb_produtos(produto, fabricante, modelo, sistema, armazenamento, cor, preco) values ("Aparelho celular", "Apple", "Iphone XR", "IOS", "128GB", "Preto", 3500.00);
insert into tb_produtos(produto, fabricante, modelo, sistema, armazenamento, cor, preco) values ("Smartphone", "Apple", "Iphone 11", "IOS", "256GB", "Cinza", 5100.00);
insert into tb_produtos(produto, fabricante, modelo, sistema, armazenamento, cor, preco) values ("Smartphone", "Apple", "Iphone 12", "IOS", "64GB", "Azul", 6200.00);
insert into tb_produtos(produto, fabricante, modelo, sistema, armazenamento, cor, preco) values ("Smartphone", "Samsung", "Galaxy A01", "Android", "64GB", "Preto", 489.00);
insert into tb_produtos(produto, fabricante, modelo, sistema, armazenamento, cor, preco) values ("Smartphone", "Multilaser", "Elite", "Android", "32GB", "Preto", 399.00);

select * from tb_produtos;

-- Atualização de dados
update tb_produtos set produto = "Smartphone" where id = 1; 

-- Exibir produtos >= 500.00.
select * from tb_produtos where preco >= 500;

-- Exibir produtos < 500.00.
select * from tb_produtos where preco < 500;
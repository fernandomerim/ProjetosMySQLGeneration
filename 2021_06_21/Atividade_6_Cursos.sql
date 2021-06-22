create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_categoria(
id bigint auto_increment,
categoria varchar(255) not null,
modalidade varchar(255) not null,
primary key (id)
);

insert into tb_categoria (categoria, modalidade) values ("Viagens e Turismo", "Curso online");
insert into tb_categoria (categoria, modalidade) values ("Administração e Negócios", "Curso online");
insert into tb_categoria (categoria, modalidade) values ("Ciências Exatas", "Curso online");
insert into tb_categoria (categoria, modalidade) values ("Tecnologia", "Curso online");
insert into tb_categoria (categoria, modalidade) values ("Ciências Humanas", "Curso online");

select * from tb_categoria;

create table tb_curso (
id bigint auto_increment,
curso varchar (255) not null,
duracao varchar (255) not null,
valor decimal(6,2) not null,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_curso (curso, duracao, valor, categoria_id) values ("Hotelaria", "2 semanas", 55.00, 1);
insert into tb_curso (curso, duracao, valor, categoria_id) values ("Gestão de equipes", "3 semanas", 70.00, 2);
insert into tb_curso (curso, duracao, valor, categoria_id) values ("Estatística", "1 semana", 30.00, 3);
insert into tb_curso (curso, duracao, valor, categoria_id) values ("Banco de Dados", "2 semanas", 60.00, 4);
insert into tb_curso (curso, duracao, valor, categoria_id) values ("Jornalismo", "1 semana", 25.00, 5);
insert into tb_curso (curso, duracao, valor, categoria_id) values ("Jogos eletrônicos", "3 semanas", 75.00, 4);
insert into tb_curso (curso, duracao, valor, categoria_id) values ("Matemática", "1 semana", 15.00, 3);
insert into tb_curso (curso, duracao, valor, categoria_id) values ("Computação gráfica", "3 semanas", 50.00, 4);

select * from tb_curso;

-- Faça um select que retorne os Produtos com o valor maior do que 50 reais.
select * from tb_curso where valor > 50.00;

-- Faça um select trazendo  os Produtos com valor entre 3 e 60 reais.
select * from tb_curso where valor between 3.00 and 60.00;

-- Faça um select  utilizando LIKE buscando os Produtos com a letra J.
select * from tb_curso where curso like "J%";

-- Faça um um select com Inner join entre  tabela categoria e produto.
select * from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id;

-- Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são aves ou legumes).
select * from tb_curso where categoria_id = 4; -- Exibindo cursos de Tecnologia
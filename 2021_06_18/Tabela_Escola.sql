create database db_escola;

use db_escola;

create table tb_alunos (

matricula bigint auto_increment,
nome varchar(255) not null,
disciplina varchar(255) not null,
anoletivo bigint not null,
nota decimal(4,2) not null,
primary key (matricula)
);

insert into tb_alunos (nome, disciplina, anoletivo, nota) values ("Fernando Merim", "Matemática", "2021", 10.00);
insert into tb_alunos (nome, disciplina, anoletivo, nota) values ("Vinicius Teixeira", "Português", "2015", 8.00);
insert into tb_alunos (nome, disciplina, anoletivo, nota) values ("Eduardo Silva", "Ciências", "2014", 9.00); 
insert into tb_alunos (nome, disciplina, anoletivo, nota) values ("Vanessa Santos", "Português", "2013", 6.00); 
insert into tb_alunos (nome, disciplina, anoletivo, nota) values ("Gabriela Oliveira", "Geografia", "2016", 10.00);
insert into tb_alunos (nome, disciplina, anoletivo, nota) values ("Patricia Rodrigues", "Química", "2013", 5.00);
insert into tb_alunos (nome, disciplina, anoletivo, nota) values ("Heloisa Fernandes", "Física", "2019", 4.00); 
insert into tb_alunos (nome, disciplina, anoletivo, nota) values ("Renato Souza", "Filosofia", "2018", 4.00); 

 select * from tb_alunos;
 
 -- Atualização de dados
update tb_alunos set anoletivo = 2010 where matricula = 1; 

-- Exibir notas >= 7.00.
select * from tb_alunos where nota >= 7.00;

-- Exibir notas < 7.00.
select * from tb_alunos where nota < 7.00;
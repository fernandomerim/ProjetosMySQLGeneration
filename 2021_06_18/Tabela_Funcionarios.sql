create database db_controle_rh; -- Passo 1

use db_controle_rh; -- Passo 2

create table tb_funcionarios( -- Passo 3
matricula bigint auto_increment,
nome varchar(255) not null,
cargo varchar(255) not null,
setor varchar(255) not null,
salario decimal(6,2) not null,
primary key(matricula)
);

insert into tb_funcionarios(nome, cargo, setor, salario) values ("Fernando Merim", "Desenvolvedor", "Tecnologia", 6300.00);
insert into tb_funcionarios(nome, cargo, setor, salario) values ("Vinicius Teixeira", "Desenvolvedor", "Tecnologia", 6100.00);
insert into tb_funcionarios(nome, cargo, setor, salario) values ("Patricia Mendes", "Recrutadora", "Recursos Humanos", 5200.00);
insert into tb_funcionarios(nome, cargo, setor, salario) values ("Vanessa Santos", "Analista de Finanças", "Financeiro", 4000.00);
insert into tb_funcionarios(nome, cargo, setor, salario) values ("Caio Silva", "Mensageiro", "Administração", 2000.00);

select * from tb_funcionarios;

-- Atualização de dados
update tb_funcionarios set salario = 1500.00 where matricula = 5; 

-- Exibir salários >= 2000.
select * from tb_funcionarios where salario >= 2000;

-- Exibir salários < 2000.
select * from tb_funcionarios where salario < 2000;






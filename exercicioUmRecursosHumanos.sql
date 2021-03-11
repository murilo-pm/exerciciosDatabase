create database db_funcionarios;

use db_funcionarios;

create table tb_funcionarios(
	id bigint auto_increment,
    nome varchar (50) not null,
    registro bigint(6)not null,
    setor varchar (20) not null,
    funcao varchar (20) not null,
    salario decimal (8,2) not null,
    
    primary key (id)
);

select * from tb_funcionarios;
select * from tb_marcas where salario > 2000.00;
select * from tb_marcas where salario < 2000.00;


insert into tb_funcionarios(nome, registro, setor, funcao, salario) values ("Pedro", 300798, "marketing", "analista jr", 2500.00);
insert into tb_funcionarios(nome, registro, setor, funcao, salario) values ("Dolores", 070519, "trauma", "cirurgiã", 14000.00);
insert into tb_funcionarios(nome, registro, setor, funcao, salario) values ("Esperança",210221, "bem estar", "psicóloga", 4500.00);
insert into tb_funcionarios(nome, registro, setor, funcao, salario) values ("Vinícius", 260221, "necrópsia", "médico legista", 9000.00);
insert into tb_funcionarios(nome, registro, setor, funcao, salario) values ("Gabriel", 180418, "direito", "advogado", 6000.00);

update tb_funcionarios set salario = 1900 where id = 1;


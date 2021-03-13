create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(
id bigint auto_increment,
original boolean not null,
generico boolean not null,
retencao_receita boolean not null,

primary key(id)
);

create table tb_produto(
id bigint auto_increment,
nome varchar(75) not null,
laboratorio_orgao varchar(50) not null,
peso decimal(10,2) not null,
preco decimal(10,2) not null,
comprimidos int not null,
categoria_id bigint not null,

primary key(id),
foreign key(categoria_id) references tb_categoria(id)
);

insert tb_categoria(original, generico, retencao_receita) values(1,0,1); -- 1
insert tb_categoria(original, generico, retencao_receita) values(0,1,1); -- 2
insert tb_categoria(original, generico, retencao_receita) values(0,1,0); -- 3
insert tb_categoria(original, generico, retencao_receita) values(1,0,0); -- 4


insert tb_produto(nome, laboratorio_orgao, peso, preco, comprimidos, categoria_id) values("cloridrato de nortriptilina", "novartis", 25, 15.70, 20, 1);
insert tb_produto(nome, laboratorio_orgao, peso, preco, comprimidos, categoria_id) values("cloridrato de amitriptilina", "anvisa", 25, 14.50, 20, 2);
insert tb_produto(nome, laboratorio_orgao, peso, preco, comprimidos, categoria_id) values("hemifumarato de quetiapina", "anvisa", 25, 20.99, 30, 2);
insert tb_produto(nome, laboratorio_orgao, peso, preco, comprimidos, categoria_id) values("cloridrato de loperamida", "janssen cilag", 2, 2.99, 12, 4);
insert tb_produto(nome, laboratorio_orgao, peso, preco, comprimidos, categoria_id) values("doril", "cosmed", 530, 6.49, 6, 4);

select * from tb_categoria;
select * from tb_produto;

select * from tb_produto where preco > 50;
select * from tb_produto where preco > 2.99 and preco < 61;
select * from tb_produto where nome like 'b%';
select * from tb_produto where nome like 'c%';
select * from tb_produto where categoria_id = 4;

select * from tb_categoria
inner join tb_produto on tb_produto.categoria_id = tb_categoria.id;

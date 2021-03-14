create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_categoria(
id bigint auto_increment,
desconto boolean,
eixo_jogos boolean,
eixo_automacao boolean,

primary key(id)
);

create table tb_produto(
id bigint auto_increment,
nome_do_curso varchar(75),
preco decimal(10,2),
nota_do_curso decimal(10,2),
nome_professor varchar(75),
carga_horaria varchar(10),
categoria_id bigint,

primary key(id),
foreign key(categoria_id) references tb_categoria(id)
);

insert tb_categoria(desconto, eixo_jogos, eixo_automacao) values(1,0,0); -- 1, com desconto e fora dos eixos
insert tb_categoria(desconto, eixo_jogos, eixo_automacao) values(1,1,0); -- 2, com desconto e do eixo jogos OK
insert tb_categoria(desconto, eixo_jogos, eixo_automacao) values(1,0,1); -- 3, com desconto e do eixo automação OK
insert tb_categoria(desconto, eixo_jogos, eixo_automacao) values(0,0,1); -- 4, sem desconto e do eixo automação OK
insert tb_categoria(desconto, eixo_jogos, eixo_automacao) values(0,1,0); -- 5, sem desconto e do eixo jogos OK
insert tb_categoria(desconto, eixo_jogos, eixo_automacao) values(0,0,0); -- 6, sem desconto e fora dos eixos OK

insert tb_produto(nome_do_curso,preco,nota_do_curso,nome_professor,carga_horaria,categoria_id) values("Jogue xadrez", 39.90, 4.4, "Adriano dos Santos", "10 horas", 2);
insert tb_produto(nome_do_curso,preco,nota_do_curso,nome_professor,carga_horaria,categoria_id) values("Xadrez básico", 49.90, 4.3, "Carla Rodrigues", "8 horas", 5);
insert tb_produto(nome_do_curso,preco,nota_do_curso,nome_professor,carga_horaria,categoria_id) values("Aprenda Programação de CLP do zero", 59.99, 4.5, "Gabriel dos Santos", "4 horas", 3);
insert tb_produto(nome_do_curso,preco,nota_do_curso,nome_professor,carga_horaria,categoria_id) values("Programação CLP e IHM Siemens", 49.90, 4.2, "Gabriel dos Santos", "7 horas", 4);
insert tb_produto(nome_do_curso,preco,nota_do_curso,nome_professor,carga_horaria,categoria_id) values("Finanças Pessoais", 129.99, 4.5, "Luciana De La Cruz", "12 horas", 6);
insert tb_produto(nome_do_curso,preco,nota_do_curso,nome_professor,carga_horaria,categoria_id) values("Curso de Piano Completo para Iniciantes", 489.49, 4.8, "Lúcia Perez", "20 horas", 1);

select * from tb_categoria;
select * from tb_produto;
select * from tb_produto where preco > 50;
select * from tb_produto where preco >= 3 and preco <=60;
select * from tb_produto where nome_do_curso like 'J%';
select * from tb_produto where categoria_id = 5;

select * from tb_produto
inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;


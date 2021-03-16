create database db_nome_minha_casa_mais_bonita;

use db_nome_minha_casa_mais_bonita;

create table tb_categoria(
id bigint auto_increment,
departamento varchar(75),
desconto boolean,
sem_desconto boolean,

primary key(id)
);

create table tb_usuario(
id bigint auto_increment,
nome_usuario varchar(100),
email varchar(100),
senha varchar(75),
cpf varchar(12),
itens_carrinho bigint,

primary key(id)
);

create table tb_produto(
id bigint auto_increment,
nome varchar(75),
descricao varchar(255),
preco decimal(10,2),
codigo_barras varchar(100),
estoque boolean,
categoria_id bigint,

primary key(id),
foreign key(categoria_id) references tb_categoria(id)
);


insert tb_categoria(departamento, desconto, sem_desconto) values("cozinha",1,0);		-- 1
insert tb_categoria(departamento, desconto, sem_desconto) values("banheiro",1,0);		-- 2
insert tb_categoria(departamento, desconto, sem_desconto) values("iluminação",0,0);		-- 3
insert tb_categoria(departamento, desconto, sem_desconto) values("cozinha",0,1);		-- 4
insert tb_categoria(departamento, desconto, sem_desconto) values("banheiro",0,1);		-- 5

insert tb_produto(nome,descricao,preco,codigo_barras,estoque,categoria_id) values ("PIA ISOCRIL 1,80M BRANCA CORSO", "A Pia em Mármore Sintético com Cuba conta com um acabamento diferenciado", 479.90, "1741264126", 1, 4);
insert tb_produto(nome,descricao,preco,codigo_barras,estoque,categoria_id) values ("PIA DE COZINHA MÁRMORE SINTÉTICO 1,20M CUBA INOX VERDE DECORALITA","MELHOR ESCOAMENTO DA ÁGUA. CUBA PROFUNDA E DE FÁCIL LIMPEZA", 229.29, "7898280877053", 0, 1);
insert tb_produto(nome,descricao,preco,codigo_barras,estoque,categoria_id) values ("ESPELHEIRA LIS 60CM AMENDOA MGM","Possui ótimas divisórias para melhor acomodar seus pertences", 249.59, "7898942618086", 1, 5);
insert tb_produto(nome,descricao,preco,codigo_barras,estoque,categoria_id) values ("ESPELHEIRA COM PRATELEIRA 62CM CRIS-SLIP 1310 CRISMETAL","Armário com espelho deslizante bidirecional", 459.99, "7896808712103",1,2);
insert tb_produto(nome,descricao,preco,codigo_barras,estoque,categoria_id) values ("LÂMPADA SUPERLED OURO 9W 6500K BIVOLT BOMLUX","Mais economia e tecnoligia para sua casa", 8.99,"7997324005176",0,3);
insert tb_produto(nome,descricao,preco,codigo_barras,estoque,categoria_id) values ("LUMINÁRIA TARTAGURA BRANCA", "beleza e qualidade", 17.99, "7899981912966", 0, 3);

insert tb_usuario(nome_usuario,email,senha,cpf,itens_carrinho) values("Vinícius Damasceno", "viniciusdama@gmail.com", "vini123","84260240846", 5);
insert tb_usuario(nome_usuario,email,senha,cpf,itens_carrinho) values("Gabriel de Sá", "gabrielsa@hotmail.com", "gabe123", "83133444824", 0);
insert tb_usuario(nome_usuario,email,senha,cpf,itens_carrinho) values("Lucas Albanes", "luks@live.com", "lucky321", "75442992879", 3);
insert tb_usuario(nome_usuario,email,senha,cpf,itens_carrinho) values("Matheus Tavares", "matt.tav@outlook.com", "mathew741", "26944864878", 2);
insert tb_usuario(nome_usuario,email,senha,cpf,itens_carrinho) values("Anne Hart", "annie@live.com", "annesrevenge", "44140467851", 1);


select * from tb_categoria;
select * from tb_usuario;
select * from tb_produto;

select * from tb_produto where preco > 50;
select * from tb_produto where preco >= 3 and preco <=60;
select * from tb_produto where nome like 'b%';
select * from tb_produto where nome like 'l%';
select * from tb_produto where nome like 'c%';
select count(*) from tb_produto; -- certifique-se de que não há espaço entre o "count" e "()"
select avg(preco) from tb_produto;
select sum(preco) from tb_produto;
select * from tb_produto where categoria_id = 1 or categoria_id = 4; 	-- categoria = banheiro

select * from tb_produto
inner join tb_categoria where tb_categoria.id = tb_produto.categoria_id;


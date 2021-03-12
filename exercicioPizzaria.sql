create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_pizza (
id bigint auto_increment,
pequena boolean,		
media boolean,
grande boolean,

primary key(id)
);

create table tb_categoria(
id bigint auto_increment,
sabor varchar(35),
molho varchar(35),
acompanhamento varchar(35),
bebida varchar(35),
preco decimal(10,2),
pizza_id bigint,

primary key(id),
foreign key(pizza_id) references tb_pizza(id)
);

-- cada inserção de dados corresponde a um "combo"
insert tb_pizza(pequena, media, grande) values(0,0,1);		-- 1
insert tb_pizza(pequena, media, grande) values(0,1,0);		-- 2
insert tb_pizza(pequena, media, grande) values(1,0,0);		-- 3
insert tb_pizza(pequena, media, grande) values(1,1,0);		-- 4 
insert tb_pizza(pequena, media, grande) values(0,1,1);		-- 5
insert tb_pizza(pequena, media, grande) values(1,0,1);		-- 6
insert tb_pizza(pequena, media, grande) values(1,1,1);		-- 7
insert tb_pizza(pequena, media, grande) values(0,0,0);		-- 8


insert tb_categoria(sabor, molho, acompanhamento, bebida, preco, pizza_id) values("atum","branco","pão de alho","coca-cola",70.50, 3);
insert tb_categoria(sabor, molho, acompanhamento, bebida, preco, pizza_id) values("camarão","pimenta","salada","pepsi twist",80.75, 2);
insert tb_categoria(sabor, molho, acompanhamento, bebida, preco, pizza_id) values("catupiry","churrasco","batata frita","coca cola",50.45, 1);
insert tb_categoria(sabor, molho, acompanhamento, bebida, preco, pizza_id) values("queijo","ketchup","esfihas","pepsi twist",60.25, 4);
insert tb_categoria(sabor, molho, acompanhamento, bebida, preco, pizza_id) values("nenhum","nenhum","batata com bacon e cheddar grande","coca-cola",30.00, 8);

select * from tb_pizza;
select * from tb_categoria;
select * from tb_categoria where preco > 45; 
select * from tb_categoria where preco > 28 and preco < 61;
select * from tb_categoria where sabor like 'c%';
select * from tb_categoria where classe_id = 4;

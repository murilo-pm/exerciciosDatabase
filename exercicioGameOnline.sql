create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
id bigint auto_increment,		-- o "id" foi considerado como um atributo
papel varchar(25),
estilo varchar(25),

primary key(id)
);

create table tb_personagem(
id bigint auto_increment,		-- o "id" foi considerado como um atributo
nome varchar(25),
ataque bigint,
defesa bigint,
saude bigint,
classe_id bigint,

primary key(id),
foreign key(classe_id) references tb_classe(id)
);

insert tb_classe(papel, estilo) values("protagonista", "mago"); -- 1
insert tb_classe(papel, estilo) values("anti-herói", "curandeiro"); --  2
insert tb_classe(papel, estilo) values("antagonista", "atirador"); --  3 
insert tb_classe(papel, estilo) values("anti-herói", "ladrão");  --  4 
insert tb_classe(papel, estilo) values("coadjuvante", "assassino");  -- 5


insert tb_personagem(nome, classe_id, ataque, defesa, saude) values("Jean", 1, 250, 100, 450);
insert tb_personagem(nome, classe_id, ataque, defesa, saude) values("Lúcia", 2, 80, 100, 600);
insert tb_personagem(nome, classe_id, ataque, defesa, saude) values("Claudia", 5, 350, 150, 400);
insert tb_personagem(nome, classe_id, ataque, defesa, saude) values("Isolda", 4, 150, 105, 400);
insert tb_personagem(nome, classe_id, ataque, defesa, saude) values("Lázaro", 3, 750, 350, 500);
insert tb_personagem(nome, classe_id, ataque, defesa, saude) values("Nestor", 3, 750, 350, 500);
insert tb_personagem(nome, classe_id, ataque, defesa, saude) values("Rômulo", 4, 150, 105, 400);
insert tb_personagem(nome, classe_id, ataque, defesa, saude) values("Remo", 4, 150, 105, 400);

select * from tb_classe;
select * from tb_personagem;

-- delete from tb_personagem where id = 9; 

select * from tb_personagem where ataque > 200; 
select * from tb_personagem where defesa > 99 and defesa < 201;
select * from tb_personagem where nome like "%C%";
select * from tb_personagem where classe_id = 4;

select * from tb_personagem
	inner join tb_classe on tb_classe.id = tb_personagem.classe_id;
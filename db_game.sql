CREATE DATABASE db_generation_game_online;

USE db_generation_game_online; 

CREATE TABLE tb_classe(
    id bigint auto_increment,
    classe varchar (255),
    especializacao varchar (255),
    arma varchar (255),
	nivel int,
    
    primary key(id)
);

SELECT * FROM tb_classe;

CREATE TABLE tb_personagem (
    id bigint auto_increment,
    nome varchar(255),
    especie varchar(255),
    vida int,
    ataque int,
    defesa int,
    classe_id bigint,  -- classe_id foi incluso para o uso da chave estrangeira da tabela de classe 
    
    primary key(id),
    foreign key (classe_id) references tb_classe(id)
);

SELECT * FROM tb_personagem;

INSERT INTO tb_classe (classe, nivel, especializacao, arma) 
VALUES ("Guerreiro", 280, "Combate Direto", "Espada");

INSERT INTO tb_classe (classe, nivel, especializacao, arma) 
VALUES ("Mago", 250, "Magia Elementar", "Cajado");

insert into tb_classe (classe, nivel, especializacao, arma) 
values ("Arqueiro", 275, "Combate a Distancia", "Besta");

insert into tb_classe (classe, nivel, especializacao, arma) 
values ("Druida", 250, "Elementos Naturais", "Foice");

insert into tb_classe (classe, nivel, especializacao, arma)  
values ("Arcano", 310, "Combate Misto", "Espada e Orbe");

insert into tb_classe (classe, nivel, especializacao, arma) 
values ("Sarcedote", 290, "Cura", "Orbe");

insert into tb_classe (classe, nivel, especializacao, arma) 
values ("Berseker", 230, "Combate Direto", "Machado de Duas Maos");

insert into tb_classe (classe, nivel, especializacao, arma) 
values ("Guardiao", 280, "Resistencia Atq Direto", "Escudo e Espada");


-- agora itens da tabela personagem


INSERT INTO tb_personagem (nome, especie, vida, ataque, defesa, classe_id) -- the boss
VALUES ("Aldcuth","Elfo", 5000, 7000, 5000, 5);

INSERT INTO tb_personagem (nome, especie, vida, ataque, defesa, classe_id)
VALUES ("Leofnan", "Elfo", 3630, 2900, 1750, 3);

INSERT INTO tb_personagem (nome, especie, vida, ataque, defesa, classe_id)
VALUES ("Redbeth", "Draconato", 3700, 3000, 1650, 7);

INSERT INTO tb_personagem (nome, especie, vida, ataque, defesa, classe_id)
VALUES ("Hambet", "Anao", 2950, 1800, 2500, 8);

INSERT INTO tb_personagem (nome, especie, vida, ataque, defesa, classe_id)
VALUES ("Lafan", "Abissal", 3000, 2900, 1800, 1);

INSERT INTO tb_personagem (nome, especie, vida, ataque, defesa, classe_id)
VALUES ("Lianthor","Humano", 2750, 3100, 1600, 2);

INSERT INTO tb_personagem (nome, especie, vida, ataque, defesa, classe_id)
VALUES ("Peann","Minotauro", 5230, 3600, 2900, 4);

INSERT INTO tb_personagem (nome, especie, vida, ataque, defesa, classe_id)
VALUES ("Grimwulf", "Meio Demonio", 3200, 2000, 3450, 6);


SELECT * FROM tb_personagem WHERE ataque > 2000;

SELECT * FROM tb_personagem WHERE defesa >= 1000 AND defesa <=2000; -- outra forma de fazer a query da consulta de defesa

SELECT * FROM tb_personagem WHERE defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagem WHERE nome LIKE "%c%";


SELECT * FROM tb_personagem INNER JOIN tb_classe on tb_classe.id = tb_personagem.id;


SELECT * FROM tb_classe
INNER JOIN tb_personagem on tb_personagem.classe_id = tb_classe.id
WHERE classe_id = 3;
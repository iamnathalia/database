CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal; 

CREATE TABLE tb_pizzas( -- dados com maior detalhe sobre os produtos
	id bigint auto_increment,
    nome varchar(255),
    ingredientes varchar (255),
    massa varchar (255), -- fina crocante, media ou macia (levemente mais grossa)
    tamanho varchar(255),
    preco decimal,
    
    primary key(id)

);

SELECT * FROM tb_pizzas;

CREATE TABLE tb_categorias (  
    id bigint auto_increment,
    nomecliente varchar(255),
    salgada boolean,
	doce boolean,
    congelada boolean,
    assada boolean, 
    
    pizzas_id bigint,
    
    primary key(id),
    foreign key (pizzas_id) references tb_pizzas(id)
    
);

SELECT * FROM tb_pizzas;

INSERT INTO tb_pizzas (nome, ingredientes, massa, tamanho, preco)
VALUES ( "calabresa", "molho de tomate, linguiça calabresa fatiada, cebola em rodelas e oregano", "à escolher", "à escolher", 45.00);

INSERT INTO tb_pizzas (nome, ingredientes, massa, tamanho, preco)
VALUES ( "mussarela", "molho de tomate, queijo mussarela, tomate em rodelas e oregano", "à escolher", "à escolher", 45.00);

INSERT INTO tb_pizzas (nome, ingredientes, massa, tamanho, preco)
VALUES ( "marguerita", "molho de tomate, queijo mussarela, folhas de manjericao, tomate em rodelas e oregano", "à escolher", "à escolher", 48.00);

INSERT INTO tb_pizzas (nome, ingredientes, massa, tamanho, preco)
VALUES ( "pepperoni", "molho de tomate, queijo mussarela, pepperoni em rodelas e oregano", "à escolher", "à escolher", 49.99);

INSERT INTO tb_pizzas (nome, ingredientes, massa, tamanho, preco)
VALUES ( "frango com requeijao", "molho de tomate, frango desfiado temperado, requeijao cremoso e oregano", "à escolher", "à escolher", 52.00);

INSERT INTO tb_pizzas (nome, ingredientes, massa, tamanho, preco)
VALUES ( "brigadeiro", "creme de baunilha, chocolate meio amargo e granulado de chocolate", "à escolher", "à escolher", 50.00);

INSERT INTO tb_pizzas (nome, ingredientes, massa, tamanho, preco)
VALUES ( "banana com canela", "banana caramelizada com canela e sorvete de creme", "à escolher", "à escolher", 50.00);

INSERT INTO tb_pizzas (nome, ingredientes, massa, tamanho, preco)
VALUES ( "creme e biscoito", "Chocolate branco crocante e pequenos pedacos de cookies de chocolate meio amargo", "à escolher", "à escolher", 50.00);

-- simulação de pedidos abaixo

INSERT INTO tb_categorias (nomecliente, salgada, doce, congelada, assada, pizzas_id)
VALUES ("Paulo", true, false, false, true, 1);

INSERT INTO tb_categorias (nomecliente, salgada, doce, congelada, assada, pizzas_id)
VALUES ("Renata", true, false, false, true, 2);

INSERT INTO tb_categorias (nomecliente, salgada, doce, congelada, assada, pizzas_id)
VALUES ("Pedro", true, false, true, false, 3);

INSERT INTO tb_categorias (nomecliente, salgada, doce, congelada, assada, pizzas_id)
VALUES ("Paula" ,false, true, true, false, 7);

INSERT INTO tb_categorias (nomecliente, salgada, doce, congelada, assada, pizzas_id)
VALUES ("Larissa", false, true, false, true, 8);

SELECT * FROM tb_categorias;

SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco >= 50.00 AND preco <=100.00;

SELECT * FROM tb_pizzas WHERE nome LIKE "%m%";

SELECT * FROM tb_pizzas INNER JOIN tb_categorias on tb_pizzas.id = tb_categorias.id; -- verificar

SELECT * FROM tb_pizzas
INNER JOIN tb_pizzas on tb_pizzas.tb_categorias = tb_categorias.id
WHERE salgada = true;
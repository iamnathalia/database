CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar; 

CREATE TABLE tb_produtos( 
	id bigint auto_increment,
    nomeProduto varchar(255),
    tipo varchar(255),
    retencaoReceita boolean,
    generico boolean,
    valorProduto decimal (8,2), 
    
    primary key(id)
);


CREATE TABLE tb_categorias (  
    id bigint auto_increment,
    nomeCliente varchar(255),
    medicamento boolean,
	cosmeticos boolean,
    higienepessoal boolean,
    
    produtos_id bigint,
    
    primary key(id),
    foreign key (produtos_id) references tb_produtos(id)
    
);


INSERT INTO tb_produtos (nomeProduto, tipo, retencaoReceita, generico, valorProduto)
VALUES ( "Doril - pct c/ 4 comprimidos", "analgesico", false, false, 14.95);

INSERT INTO tb_produtos (nomeProduto, tipo, retencaoReceita, generico, valorProduto)
VALUES ( "Tylenol - 500mg", "analgesico", false, false, 22.72);

INSERT INTO tb_produtos (nomeProduto, tipo, retencaoReceita, generico, valorProduto)
VALUES ( "Clonazepam - 2,0mg", "ansiolitico", true, true, 21.94);

INSERT INTO tb_produtos (nomeProduto, tipo, retencaoReceita, generico, valorProduto)
VALUES ( "Sabonete Liquido Dove - Nutricao Profunda", "Outros", false, false, 10.49);

INSERT INTO tb_produtos (nomeProduto, tipo, retencaoReceita, generico, valorProduto)
VALUES ( "Fralda descartavel Huggies G - 60un", "Outros", false, false, 57.97);

INSERT INTO tb_produtos (nomeProduto, tipo, retencaoReceita, generico, valorProduto)
VALUES ( "Creme Facial Eucerin com Ac. Hialuronico + Vit C - 8ml", "Outros", false, false, 87.92);

INSERT INTO tb_produtos (nomeProduto, tipo, retencaoReceita, generico, valorProduto)
VALUES ( "Creme dental Sensodyne 100g", "Outros", false, false, 16.50);

INSERT INTO tb_produtos (nomeProduto, tipo, retencaoReceita, generico, valorProduto)
VALUES ( "Fluconazol 150mg", "Antifungico", false, true, 6.43);

INSERT INTO tb_produtos (nomeProduto, tipo, retencaoReceita, generico, valorProduto)
VALUES ( "Amoxilina 500mg - 21 capsulas", "Antibiotico", true, true, 15.24);

INSERT INTO tb_produtos (nomeProduto, tipo, retencaoReceita, generico, valorProduto)
VALUES ( "Velija 60mg", "Antidepressivo", true, true, 165.50);

SELECT * FROM tb_produtos;

--

INSERT INTO tb_categorias (nomeCliente, produtos_id, medicamento, cosmeticos, higienepessoal)
VALUES ("Paulo", 1, true, false, false);

INSERT INTO tb_categorias (nomeCliente, produtos_id, medicamento, cosmeticos, higienepessoal)
VALUES ("Tatiane", 4, false, false, true);

INSERT INTO tb_categorias (nomeCliente, produtos_id, medicamento, cosmeticos, higienepessoal)
VALUES ("Geovanna", 5, false, false, true);

INSERT INTO tb_categorias (nomeCliente, produtos_id, medicamento, cosmeticos, higienepessoal)
VALUES ("Natalie", 10, true, false, false);

INSERT INTO tb_categorias (nomeCliente, produtos_id, medicamento, cosmeticos, higienepessoal)
VALUES ("Renan", 6, false, true, false);

INSERT INTO tb_categorias (nomeCliente, produtos_id, medicamento, cosmeticos, higienepessoal)
VALUES ("Camila", 7, false, false, true);

SELECT * FROM tb_categorias;

--

SELECT * FROM tb_produtos WHERE valorProduto > 50.00;

SELECT * FROM tb_produtos WHERE valorProduto >=5.00 AND valorProduto <=60.00;

SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias on tb_produtos.id = tb_categorias.id; -- verificar

SELECT * FROM tb_produtos
INNER JOIN tb_categorias on tb_categorias.produtos_id = tb_produtos.id
WHERE generico = true; 
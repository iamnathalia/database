create database db_commerce;

use db_commerce;

create table tb_product(
	id bigint auto_increment,
    nameproduct varchar (255),
    qnde int,
    modelo varchar (255),
    seção varchar (255),
    preço decimal,

	primary key(id)
);


insert into tb_product(nameproduct, qnde, modelo, seção, preço) values ("Coleção Completa - Sakura Card Captors", 2, "Mangá", "livros", 300.00); 
insert into tb_product(nameproduct, qnde, modelo, seção, preço) values ("Coleção Completa - One Piece", 1, "Mangá", "livros", 700.00); 
insert into tb_product(nameproduct, qnde, modelo, seção, preço) values ("Blusa The Owl House - Amity", 50, "Moletom", "Roupas", 199.99);
insert into tb_product(nameproduct, qnde, modelo, seção, preço) values ("Act.Figure FMA - Edward and Alphonse", 10, "Nendoroid", "Colecionaveis", 250.00);
insert into tb_product(nameproduct, qnde, modelo, seção, preço) values ("Act.Figure Demon Slayer - Nezuko", 10, "Nendoroid", "Colecionaveis", 250.50);
insert into tb_product(nameproduct, qnde, modelo, seção, preço) values ("Just Dance 2022", 15, "XBOX/PS4/5", "Games", 139.99); 
insert into tb_product(nameproduct, qnde, modelo, seção, preço) values ("Bayonetta", 3, "PS4", "Games", 129.99); 
insert into tb_product(nameproduct, qnde, modelo, seção, preço) values ("Resident Evil 2", 5, "PS4", "Games", 139.99);
insert into tb_product(nameproduct, qnde, modelo, seção, preço) values ("The Last os US II - Ed. Special Collection", 2, "PS4", "Games", 1200.00);
insert into tb_product(nameproduct, qnde, modelo, seção, preço) values ("Console PlayStation 4 - Slim c/ 1contr+1jogo", 5, "PS4", "Consoles", 1100.00);
insert into tb_product(nameproduct, qnde, modelo, seção, preço) values ("Console PlayStation 5 - c/ 1contr+1jogo", 2, "PS5", "Consoles", 4250.00);
insert into tb_product(nameproduct, qnde, modelo, seção, preço) values ("Console Xbox S Series - c/ 2contr+1jogo", 3, "XBOXSeries", "Consoles", 2499.00);


select * from tb_product;

select * from tb_product where preço > 500.00;

select * from tb_product where nota < 500.00;

update tb_product set preço=150.00 where id=5;

select * from tb_product;


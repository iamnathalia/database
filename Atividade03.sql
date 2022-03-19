create database db_elitewayschool;

use db_elitewayschool;

create table tb_alunes(
	id bigint auto_increment,
    nome varchar (255),
    classe varchar (255),
    série varchar (255),
    nota int,

	primary key(id)
);

select * from tb_alunes;

insert into tb_alunes(nome, classe, série, nota) values ("Mia Colucci", "2-A", "2º ano", 9); 
insert into tb_alunes(nome, classe, série, nota) values ("Roberta Pardo", "2-A", "2º ano", 8); 
insert into tb_alunes(nome, classe, série, nota) values ("Lupita Fernández", "2-A", "2º ano", 10); 
insert into tb_alunes(nome, classe, série, nota) values ("Miguel Arango", "2-A", "2º ano", 7); 
insert into tb_alunes(nome, classe, série, nota) values ("Diego Bustamante", "2-A", "2º ano", 9); 
insert into tb_alunes(nome, classe, série, nota) values ("Giovanni Méndez", "2-A", "2º ano", 6); 
insert into tb_alunes(nome, classe, série, nota) values ("Josy Luján", "2-A", "2º ano", 10); 
insert into tb_alunes(nome, classe, série, nota) values ("Victoria Millán", "2-A", "2º ano", 8); 

select * from tb_alunes;

select * from tb_alunes where nota > 7;

select * from tb_alunes where nota < 7;

update tb_alunes set nota=7 where id=6;

select * from tb_alunes;



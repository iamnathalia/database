create database db_RH;

use db_RH;

create table tb_funcionaries(
	id bigint auto_increment,
    nome varchar (255),
    profissao varchar (255),
    idade int,
	homeoffice boolean,
    salario int,

	primary key(id)
);

select * from tb_funcionaries;

insert into tb_funcionaries(nome, profissao, idade, homeoffice, salario) values ("Karine", "Psicologa", "29", true, 3000); 
insert into tb_funcionaries(nome, profissao, idade, homeoffice, salario) values ("Janaina", "Contadora", "32", true, 2500); 
insert into tb_funcionaries(nome, profissao, idade, homeoffice, salario) values ("Fernanda", "RH", "36", false, 1950); 
insert into tb_funcionaries(nome, profissao, idade, homeoffice, salario) values ("Bruno", "Estagiario", "24", false, 1400); 
insert into tb_funcionaries(nome, profissao, idade, homeoffice, salario) values ("Roberto", "Administrador", "40", false, 2500); 
insert into tb_funcionaries(nome, profissao, idade, homeoffice, salario) values ("Lucas", "RH", "38", true, 2350); 

select * from tb_funcionaries;

select * from tb_funcionaries where salario > 2000;

select * from tb_funcionaries where salario < 2000;

update tb_funcionaries set salario=1950 where id=2350;

select * from tb_funcionaries;


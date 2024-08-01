use itaxi;

CREATE TABLE cliente(
id VARCHAR(4),
nome VARCHAR(80),
PRIMARY KEY(id)
);
CREATE TABLE cliente_particular(
id VARCHAR(4),
cpf VARCHAR(14),
PRIMARY KEY(id),
FOREIGN KEY(id) REFERENCES cliente(id)
);
CREATE TABLE cliente_empresa(
id VARCHAR(4),
cnpj VARCHAR(18),
PRIMARY KEY(id),
FOREIGN KEY(id) REFERENCES cliente(id)
);

CREATE TABLE taxi (
placa VARCHAR(7),
marca VARCHAR(30),
modelo VARCHAR(30),
anofab INTEGER,
PRIMARY KEY(placa)
);
CREATE TABLE corrida (
cliid VARCHAR(4),
placa VARCHAR(7),
dataPedido DATE,
PRIMARY KEY(cliid, placa, dataPedido),
FOREIGN KEY(cliid) REFERENCES
cliente(id),
FOREIGN KEY(placa) REFERENCES
taxi(placa)
);

create table fake(
fakeid varchar (3),
fakename varchar(10),
faketel date
);





use itaxi;
#Inserindo clientes...
insert into cliente(id, nome) values (1234, "Pablo");
insert into cliente(id, nome) values (2345, "Juan");
insert into cliente(id, nome) values (3456, "Itadori");
insert into cliente(id, nome) values (7865, "Luffy");
insert into cliente(id, nome) values (004, "Zoro");
insert into cliente(id, nome) values (14, "Balduino");
insert into cliente(id, nome) values (874, "Patrick");
insert into cliente(id, nome) values (478, "Roberto");
insert into cliente(id, nome) values (999, "Logan");
insert into cliente(id, nome) values (0074, "May");
insert into cliente(id, nome) values (0001, "Pablo");
select*from cliente;
delete from cliente where id='1234';

#inserindo clientes particulares...
insert into cliente_particular(id, cpf) values (1234, "191.436.630-10");
insert into cliente_particular(id, cpf) values (2345, "185.447.470-78");
insert into cliente_particular(id, cpf) values (3456, "812.828.290-50");
insert into cliente_particular(id, cpf) values (7865, "789.789.240-93");
insert into cliente_particular(id, cpf) values (0004, "977.673.950-49");
select*from cliente_particular;

#criando clientes empresa...
insert into cliente_empresa(id, cnpj) values (0074, "20.211.298/0001-96");
insert into cliente_empresa(id, cnpj) values (999, "92.440.949/0001-20");
insert into cliente_empresa(id, cnpj) values (478, "49.763.597/0001-15");
insert into cliente_empresa(id, cnpj) values (874, "50.177.862/0001-62");
insert into cliente_empresa(id, cnpj) values (14, "78.799.925/0001-31");
select*from cliente_empresa;

#Inserindo taxis...
insert into taxi(placa, marca, modelo, anofab) values ("HYM6268","LIFAN","530 1.5 16V 103cv 4p", 2015);
insert into taxi(placa, marca, modelo, anofab) values ("FWU1856","Mazda","626 GT", 1993);
insert into taxi(placa, marca, modelo, anofab) values ("AMC5218","LIFAN","FOISON 1.3 16V 85cv 2p", 2014);
insert into taxi(placa, marca, modelo, anofab) values ("MYL8113","Volvo","V40 2.0 Aut.", 1997);
insert into taxi(placa, marca, modelo, anofab) values ("MUP1117","LOBINI","H1 1.8 20V Turbo 180cv 2p", 2005);
insert into taxi(placa, marca, modelo, anofab) values ("HUP2429","Ferrari","F430 F1", 2005);
insert into taxi(placa, marca, modelo, anofab) values ("MWY2767","Bugre","Buggy IV e V", 1985);
insert into taxi(placa, marca, modelo, anofab) values ("MWL7951","Saturn","SL-2 1.9", 1991);
insert into taxi(placa, marca, modelo, anofab) values ("KGT2729","Troller","T-4 4x4 3.0 TB Int. Cap. R", 2006);
insert into taxi(placa, marca, modelo, anofab) values ("JLL8851","Isuzu","Amigo 2.3 4x2/4x4", 1992);
select*from taxi;

#Inserindo corridas...
insert into corrida(cliid, placa, dataPedido) values (1234, "HYM6268", "1999-05-10");
insert into corrida(cliid, placa, dataPedido) values (2345, "FWU1856", "2000-06-11");
insert into corrida(cliid, placa, dataPedido) values (3456, "AMC5218", "2001-07-12");
insert into corrida(cliid, placa, dataPedido) values (7865, "MYL8113", "2002-08-13");
insert into corrida(cliid, placa, dataPedido) values (0004, "MUP1117", "2003-09-14");
insert into corrida(cliid, placa, dataPedido) values (0014, "HUP2429", "2004-10-15");
insert into corrida(cliid, placa, dataPedido) values (0874, "MWY2767", "2005-11-16");
insert into corrida(cliid, placa, dataPedido) values (0478, "MWL7951", "2006-12-17");
insert into corrida(cliid, placa, dataPedido) values (0999, "KGT2729", "2007-01-18");
insert into corrida(cliid, placa, dataPedido) values (2345, "JLL8851", "2008-02-19");
select*from corrida;

#Questão 1 -- MER e DDL
select * from fake;
drop table fake; #deleta a tabela escolhida

alter table cliente_empresa add nome char; #altera a tabela escolhida adicionando uma nova coluna e seu tipo
select * from cliente_empresa;
alter table cliente_empresa modify column nome integer; #altera a tabela escolhida modificando a coluna escolhida(nesse caso, o tipo da coluna)
alter table cliente_empresa drop nome; #Alterando a tabela escolhida, deletando a coluna nome 

update taxi set marca='Ferrari' where placa='HYM6268';
update taxi set marca='Ferrari' where placa='AMC5218';
describe cliente_empresa;

#Questão 4 e 5:
#listar itens
select nome from cliente;
select cpf from cliente_particular;
select cnpj from cliente_empresa;
select marca from taxi;
select cliid from corrida;


select*from taxi;
#Questão 6 e 7
alter table taxi add salario varchar (10);
alter table taxi modify column salario varchar (15);
alter table taxi add endereco varchar (50); 

/*insert into taxi(salario, endereco) values('R$ 1.400,00', 'Fortaleza-CE');
insert into taxi(salario, endereco) values('R$ 1.500,00', 'Manaus-AM');
insert into taxi(salario, endereco) values('R$ 10.600,00', 'Ouro Preto - MG');
insert into taxi(salario, endereco) values('R$ 17.200,00', 'SãomPaulo - SP');
insert into taxi(salario, endereco) values('R$ 3.800,00', 'Umirim-CE');
insert into taxi(salario, endereco) values('R$ 2.500,00', 'Amontada-CE');
insert into taxi(salario, endereco) values('R$ 5.400,00', 'Itapipoca-CE');
insert into taxi(salario, endereco) values('R$ 7.400,00','Sobral-CE');
insert into taxi(salario, endereco) values('R$ 8.400,00', 'Bahia-BA');
insert into taxi(salario, endereco) values('R$ 3.100,00', 'Rio de janeiro-RJ');*/

# Atualizando os valores de salario e endereco na tabela taxi
UPDATE taxi SET salario=1400.35, endereco='Fortaleza-CE' WHERE placa='HYM6268';
UPDATE taxi SET salario=1500.78, endereco='Manaus-AM' WHERE placa='FWU1856';
UPDATE taxi SET salario=10600.75, endereco='Ouro Preto - MG' WHERE placa='AMC5218';
UPDATE taxi SET salario=17200.84, endereco='São Paulo - SP' WHERE placa='MYL8113';
UPDATE taxi SET salario=3800.97, endereco='Umirim-CE' WHERE placa='MUP1117';
UPDATE taxi SET salario=2507.08, endereco='Amontada-CE' WHERE placa='HUP2429';
UPDATE taxi SET salario=5470.73, endereco='Itapipoca-CE' WHERE placa='MWY2767';
UPDATE taxi SET salario=7400.98, endereco='Sobral-CE' WHERE placa='MWL7951';
UPDATE taxi SET salario=8478.87, endereco='Bahia-BA' WHERE placa='KGT2729';
UPDATE taxi SET salario=3800.56, endereco='Crato-CE' WHERE placa='JLL8851';

alter table taxi modify column salario float;
UPDATE taxi set salario=salario * 1.135 where placa='HYM6268';
SELECT * FROM taxi;
describe taxi;

update taxi set endereco='Itapaje-CE';


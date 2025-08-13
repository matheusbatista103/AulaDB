create database padaria;
use padaria;

create table padoca(
idpadoca int auto_increment not null,
nomedoce varchar(29) null,
CNPJ varchar(20) null,
primary key(idpadoca));

create table atendente(
idatendente int auto_increment not null,
nomeantendente varchar(100) null,
cargo varchar(20) null,
primary key(idatendente));

create table pagamento(
idpag int auto_increment not null,
tipopag varchar(20) null,
valor double null,
primary key(idpag));

create table comanda(
idcom int auto_increment not null,
produto varchar(20) null,
primary key(idcom));

create table caixa(
idcaixa int auto_increment not null,
datapadoca date null,
padoca int null,
atendente int null,
pagamento int null,
comanda int null,
primary key(idcaixa),
foreign key(padoca) references padoca(idpadoca),
foreign key(atendente) references atendente(idatendente),
foreign key(pagamento) references pagamento(idpag),
foreign key(comanda) references comanda(idcom));


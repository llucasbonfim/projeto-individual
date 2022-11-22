create database callstudents;

use callstudents;

create table usuario (
idusuario int primary key auto_increment,
nome varchar(45),
sobrenome varchar(45),
email varchar(45),
senha varchar(45),
fkmapa int,
foreign key (fkmapa) references mapa(idmapa),
fkarma int,
foreign key (fkarma) references arma(idarma),
fkoperador int,
foreign key (fkoperador) references operador(idoperador),
constraint chkemail check ( email like '%@%') 
);

select * from usuario;

create table mapa (
idmapa int primary key auto_increment,
nome_mapa varchar(45)
);

insert into mapa values 
(4, 'Shoot House'),
(5, 'Hijacked'),
(6, 'Nuketown');

create table arma (
idarma int primary key auto_increment,
nome_arma varchar(45)
);

insert into arma values 
(1, 'Assault'),
(2, 'Smg'),
(3, 'Precisão'),
(4, 'Pistola'),
(5, 'Escopeta'),
(6, 'Corpo a Corpo');

create table operador (
idoperador int primary key auto_increment,
nome_operador varchar(45)
);

insert into operador values 
(1, 'Price'),
(2, 'Ghost'),
(3, 'Soap'),
(4, 'Rose'),
(5, 'Snoop Dogg'),
(6, 'Mara');

select concat(idmapa) as mapa, nome_mapa from mapa;
select concat(idarma) as arma, nome_arma from arma;
select concat(idoperador) as operador, nome_operador from operador;

insert into mapa values 
(1, 'shipment');

insert into mapa values 
(2, 'crash'),
(3, 'rust');
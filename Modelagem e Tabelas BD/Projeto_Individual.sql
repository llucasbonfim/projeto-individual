create database callstudents;

use callstudents;

create table usuario (
idusuario int primary key auto_increment,
nome varchar(45),
sobrenome varchar(45),
email varchar(45),
senha varchar(45),
constraint chkemail check ( email like '%@%') 
);
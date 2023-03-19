create database bdGestaoRH;

use bdGestaoRH;

create table tbUsuarios(
Username varchar (20) primary key,
Senha varchar (16));

insert into tbUsuarios values ("admin", "admin");

insert into tbUsuarios values ("joaquim", "jojo123");

create table tbFuncionarios(
Id_Funcionario int auto_increment primary key,
Nome varchar (100),
Idade int (60),
Sexo varchar (20),
Email varchar (100),
Cargo varchar (100),
Telefone varchar (15)
);

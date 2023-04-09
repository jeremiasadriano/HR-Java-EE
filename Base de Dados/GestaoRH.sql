create database bdGestaoRH;

use bdGestaoRH;

create table tbUsuarios(
Username varchar (20) primary key,
Senha varchar (16));

insert into tbUsuarios values ("admin", "admin");

create table tbDepartamentos(
Id_Departamento varchar (20) not null unique,
Nome_Departamento varchar(50) primary key
);


insert into tbDepartamentos values ("MTM", "Multimedia");
insert into tbDepartamentos values ("IT","Tecnologia");


create table tbFuncionarios(
Id_Funcionario int auto_increment primary key,
Nome varchar (100),
Idade int (60),
Sexo varchar (20),
Email varchar (100),
Cargo varchar (100),
Departamento varchar (50),
Telefone varchar (15),
foreign key (Departamento) references tbDepartamentos(Nome)
);


insert into tbFuncionarios (Nome, Idade, Sexo, Email, Cargo, Departamento, Telefone) 
values ("Pedro Nhamirre", 20, "Masculino", "pedrinhooliv@gmail.com", "Dev Ops", "Tecnologia", "869515428");


-- Esse inner join serve para dar um select em todos os funcionarios de um determinado departamento--
select tbFuncionarios.Nome, tbFuncionarios.Cargo,tbDepartamentos.Nome_Departamento 
from tbFuncionarios
inner join tbDepartamentos
on tbDepartamentos.Id_Departamento = "MTM" and tbFuncionarios.Departamento="Multimedia";

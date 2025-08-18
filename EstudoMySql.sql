CREATE DATABASE Aula0;

USE Aula0;

CREATE table Aula0.Pessoa (
	ID int primary key auto_increment,
    NOME varchar(255) not null,
    cpf varchar(11) unique not null,
    data_nasc date not null,
    saldo float not null default 0.0
);

-- DROP DATABASE aula0; Apaga o banco de dados

DROP table myTable;
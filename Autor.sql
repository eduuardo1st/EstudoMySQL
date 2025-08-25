CREATE DATABASE AUTOR;

USE AUTOR;

CREATE table if not exists AUTOR.Autor(
	ID_Autor int auto_increment,
    NOME varchar(255) not null,
    PRIMARY KEY (ID_Autor)
);

CREATE table if not exists AUTOR.Livro(
	ISBN varchar(20) not null, 
    titulo varchar(255) not null,
    ano_livro int,
    ID_Autor int not null,
    PRIMARY KEY (ISBN), 
    CONSTRAINT FK_AutorID
    foreign key (ID_Autor) references Autor(ID_Autor)
    on update cascade
    on delete restrict
);

insert into Autor (NOME) values ('Davi'), ('Ana');

select ID_Autor, nome from Autor;

insert into Livro (ISBN, titulo, ano_livro, ID_Autor)
values ("212121312322123", "As aventuras de jefinho", 2025, 1),
("000000000000", 'IT', 2023, 2);

select * from livro;

CREATE  table Autor.pessoa (
	ID_pessoa int not null auto_increment,
    CPF decimal(11) unique not null,
    nome varchar(255) not null,
    data_nasc date not null,
    PRIMARY KEY (ID_pessoa)
);

INSERT INTO pessoa (nome, CPF, data_nasc)
values ("Eduardo", 11324432443, '2006-07-02'),
("Arthur", 2123434234, '2003-05-22');

select * from pessoa;

DROP TABLE pessoa;

create table Emprestimo (
	ID int primary key auto_increment,
    data_emprestimo timestamp not null
		default current_timestamp,
	data_devolucao timestamp,
    ISBN_livro decimal(13) not null,
    pessoa_id int not null,
    CONSTRAINT FK_ISBNLivro
		foreign key (ISBN_Livro) references Livro(ISBN)
		on update cascade
		on delete restrict,
    foreign key (pessoa_id) references pessoa(ID_pessoa)
);
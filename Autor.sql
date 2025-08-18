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
    nome varchar(255) not null,
    Data_emprestimo date not null,
    Data_devolucao date,
    ISBN varchar (20) not null,
    PRIMARY KEY (ID_pessoa),
    CONSTRAINT FK_ISBNLivro
    foreign key (ISBN) references Livro(ISBN)
    on update cascade
    on delete restrict
);

INSERT INTO pessoa (nome, Data_emprestimo, Data_devolucao, ISBN)
values ("Eduardo", '2025-05-23', '2025-06-15', "000000000000"),
("Arthur", '2025-07-14', null, "212121312322123");

select * from pessoa;

DROP TABLE pessoa;
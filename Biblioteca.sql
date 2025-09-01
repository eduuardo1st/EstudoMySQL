CREATE DATABASE IF NOT EXISTS Biblioteca;
USE Biblioteca;

CREATE TABLE Pessoa (
    ID_pessoa INT AUTO_INCREMENT PRIMARY KEY,
    CPF DECIMAL(11) UNIQUE NOT NULL,
    Nome VARCHAR(255) NOT NULL,
    Data_Nascimento DATE NOT NULL
);

CREATE TABLE Autor (
    ID_Autor INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(255) NOT NULL
);

CREATE TABLE Livro (
    ISBN VARCHAR(20) NOT NULL PRIMARY KEY,
    Titulo VARCHAR(255) NOT NULL,
    Ano INT,
    Editora VARCHAR(255),
    ID_Autor INT NOT NULL,
    CONSTRAINT FK_Autor FOREIGN KEY (ID_Autor) 
        REFERENCES Autor(ID_Autor)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
);

CREATE TABLE Aluno (
    Matricula INT AUTO_INCREMENT PRIMARY KEY,
    ID_Pessoa INT NOT NULL,
    Entrada DATE NOT NULL,
    Ativo BOOLEAN DEFAULT TRUE,
    CONSTRAINT FK_PessoaAluno FOREIGN KEY (ID_Pessoa)
        REFERENCES Pessoa(ID_pessoa)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);

CREATE TABLE Curso (
    Codigo INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(255) NOT NULL
);

CREATE TABLE Turma (
    Codigo INT AUTO_INCREMENT PRIMARY KEY,
    Semestre VARCHAR(10) NOT NULL,
    Codigo_Curso INT NOT NULL,
    CONSTRAINT FK_TurmaCurso FOREIGN KEY (Codigo_Curso)
        REFERENCES Curso(Codigo)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);

CREATE TABLE Cursa (
    ID_Cursa INT AUTO_INCREMENT PRIMARY KEY,
    Matricula_Aluno INT NOT NULL,
    Codigo_Turma INT NOT NULL,
    CONSTRAINT FK_CursaAluno FOREIGN KEY (Matricula_Aluno)
        REFERENCES Aluno(Matricula)
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    CONSTRAINT FK_CursaTurma FOREIGN KEY (Codigo_Turma)
        REFERENCES Turma(Codigo)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);

CREATE TABLE Emprestimo (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Data_Emprestimo TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    Data_Devolucao TIMESTAMP NULL,
    ISBN_Livro VARCHAR(20) NOT NULL,
    Matricula_Aluno INT NOT NULL,
    CONSTRAINT FK_EmprestimoLivro FOREIGN KEY (ISBN_Livro)
        REFERENCES Livro(ISBN)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,
    CONSTRAINT FK_EmprestimoAluno FOREIGN KEY (Matricula_Aluno)
        REFERENCES Aluno(Matricula)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);

INSERT INTO Pessoa (CPF, Nome, Data_Nascimento) VALUES
(11324432443, "Eduardo", "2006-07-02"),
(2123434234, "Arthur", "2003-05-22"),
(99887766544, "Maria", "2002-11-10");

INSERT INTO Autor (Nome) VALUES
("Davi"), 
("Ana"),
("João");

INSERT INTO Livro (ISBN, Titulo, Ano, Editora, ID_Autor) VALUES
("212121312322123", "As aventuras de jefinho", 2025, "Editora A", 1),
("000000000000", "IT", 2023, "Editora B", 2),
("1111111111111", "Banco de Dados para Iniciantes", 2024, "Editora C", 3);

INSERT INTO Aluno (ID_Pessoa, Entrada, Ativo) VALUES
(1, "2024-01-10", TRUE),
(2, "2023-08-15", TRUE),
(3, "2022-02-05", FALSE);

INSERT INTO Curso (Nome) VALUES
("Engenharia de Software"), 
("Economia"),
("Ciência da Computação");

INSERT INTO Turma (Semestre, Codigo_Curso) VALUES
("2024/1", 1),
("2024/2", 2),
("2025/1", 3);

INSERT INTO Cursa (Matricula_Aluno, Codigo_Turma) VALUES
(1, 1),
(2, 2),
(3, 3);

INSERT INTO Emprestimo (ISBN_Livro, Matricula_Aluno) VALUES
("212121312322123", 1),
("000000000000", 2),
("1111111111111", 3);

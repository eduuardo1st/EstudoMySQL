# EstudoMySQL

Este repositório contém arquivos SQL para estudo e prática de conceitos de banco de dados MySQL. Ele inclui um esquema de banco de dados para um sistema de biblioteca e exemplos de operações DDL (Data Definition Language) e DML (Data Manipulation Language).



## Estrutura do Projeto

O repositório é composto pelos seguintes arquivos:

- `Biblioteca.sql`: Contém o script SQL para a criação de um banco de dados de biblioteca, incluindo tabelas para `Pessoa`, `Autor`, `Livro`, `Aluno`, `Curso`, `Turma`, `Cursa` e `Emprestimo`, além de dados de exemplo para popular essas tabelas.
- `EstudoMySql.sql`: Contém exemplos de comandos DDL e DML, como a criação de um banco de dados `Aula0` e uma tabela `Pessoa` com colunas para `ID`, `NOME`, `cpf`, `data_nasc` e `saldo`. Inclui também exemplos de `DROP DATABASE` e `DROP TABLE` table` table.



## Como Usar

Para utilizar os scripts SQL deste repositório, siga os passos abaixo:

1.  **Clone o repositório:**

    ```bash
    git clone https://github.com/eduuardo1st/EstudoMySQL.git
    ```

2.  **Acesse o diretório do projeto:**

    ```bash
    cd EstudoMySQL
    ```

3.  **Execute os scripts SQL:**

    Você pode executar os scripts usando um cliente MySQL (como MySQL Workbench, DBeaver ou a linha de comando `mysql`).

    - Para o script `Biblioteca.sql`:

        ```bash
        mysql -u seu_usuario -p < Biblioteca.sql
        ```

    - Para o script `EstudoMySql.sql`:

        ```bash
        mysql -u seu_usuario -p < EstudoMySql.sql
        ```

    Certifique-se de substituir `seu_usuario` pelo seu nome de usuário do MySQL e, quando solicitado, insira sua senha.





## Contribuição

Contribuições são bem-vindas! Se você tiver sugestões, melhorias ou encontrar algum problema, sinta-se à vontade para abrir uma *issue* ou enviar um *pull request*.

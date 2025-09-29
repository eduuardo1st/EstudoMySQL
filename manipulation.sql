select nome from Autor;

select distinct nome from Autor;

select * from pessoa 
where saldo <> 0;

select * from pessoa
order by data_nasc desc;

select * from pessoa
where nome like "Eduardo";

select * from pessoa 
where data_nasc between '2000-01-01' and '2030-11-20';

select min(ano) as antigo
from livro;

select nome from autor;

select titulo from livro;

select * from pessoa 
where data_nasc > '2007-09-29';

select * from pessoa 
where data_nasc > date_sub(current_date(), interval 18 year);

select A.nome, L.titulo 
from autor A inner join Livro L
on A.id = L.autorid;

select A.nome
from autor A left join Livro L
on A.id = L.autorid
where l.isbn is null;

select * from pessoa P 
inner join Emprestimo E 
	on P.id = E.pessoa_id
inner join Livro L
	on E.isbn_livro = L.isbn;
    
    
select a.id, a.nome, count(L.isbn) as qnt
from Autor A
left join Livro L 
	on A.id, A.nome;

	select * from caixa;
	select * from atendente;

#adicionar coluna
alter table atendente
add column idade int;

alter table atendente
add column salario double after cargo;

alter table atendente
drop idade;

insert into atendente values
(1, 'Karina', 'recepcionista', 2.500),
(2, 'Victor', 'gerente', 8.500),
(3, 'Stefan', 'operador', 3.500),
(4, 'Willian', 'investigador', 9.500),
(5, 'Richard', 'fiscal', 1.800);

select * from atendente;
select idatendente, nomeantendente from atendente;

select * from atendente where idatendente = 2;
select * from atendente where nomeantendente = 'Stefan';
select * from atendente where salario = '9.500';


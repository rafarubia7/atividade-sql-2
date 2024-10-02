-- 1.
select * from departamento
where (qtdfuncionariosdepto>15);

-- 2.
select * from funcionario
where (salario>=4000);

-- 3.
SELECT AVG(salario) AS media FROM funcionario;

-- 4.
SELECT ROUND(AVG(salario), 2) AS media FROM funcionario;

-- 5.
SELECT * FROM funcionario
WHERE nome_funcionario = 'Gomes';

-- 6. 
SELECT nome_funcionario, salario, (salario * 12) AS salario_anual
FROM funcionario;

-- 7.
SELECT MAX(salario) AS maior_salario FROM funcionario;

-- 8. 
SELECT * FROM funcionario 
order by salario desc
LIMIT 2;

-- 9.
select * from funcionario
order by data_admissao asc
limit 1;

-- 10.
SELECT sigla_depto FROM funcionario 
WHERE EXISTS (
SELECT * FROM funcionario
WHERE salario > 5000
);

-- 11.
SELECT sigla_depto FROM funcionario 
WHERE EXISTS (
SELECT * FROM funcionario
WHERE salario > (select AVG(salario) FROM funcionario)
);

-- 12.
SELECT sigla_depto FROM funcionario 
WHERE EXISTS (
SELECT * FROM funcionario
WHERE nome_funcionario = 'Costa'
);

-- 13.
SELECT sigla_depto FROM funcionario 
WHERE EXISTS (
SELECT * FROM funcionario
WHERE salario > (select AVG(salario) FROM funcionario)
);

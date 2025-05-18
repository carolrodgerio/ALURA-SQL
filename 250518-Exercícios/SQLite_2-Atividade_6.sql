-- 1

SELECT * FROM clientes
ORDER BY nome
LIMIT 5;

-- 2

SELECT * FROM produtos
WHERE descricao IS NULL;

-- 3

SELECT *
FROM funcionarios
WHERE nome LIKE 'A%s';

-- 4

SELECT departamento, AVG(salario)
FROM funcionarios
GROUP BY departamento
HAVING AVG(salario) > 5000;

-- 5

SELECT nome || ' ' || sobrenome, LENGTH(nome || ' ' || sobrenome)
FROM clientes;

-- 6

SELECT id_venda, data_venda, JULIANDAY('now') - JULIANDAY(data_venda)
FROM vendas;

-- 7

SELECT *, CEIL(preco_total)
FROM pedidos;

-- 8

SELECT
CAST(data_string AS DATE), *
FROM eventos
WHERE CAST(data_string AS DATE) > DATE '2023-01-01';

-- 9

SELECT *,
CASE
WHEN avaliacao BETWEEN 1 AND 3 THEN 'Ruim'
WHEN avaliacao BETWEEN 4 AND 7 THEN 'Média'
WHEN avaliacao BETWEEN 8 AND 10 THEN 'Boa'
END AS resultado
FROM avaliacoes;

-- 10

ALTER TABLE funcionarios RENAME COLUMN data_nasc TO data_nascimento;

SELECT * FROM funcionarios
WHERE data_nascimento > DATE '1990-01-01';

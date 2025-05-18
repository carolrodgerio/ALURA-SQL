-- MAX (valor máximo)

SELECT coluna, MAX(coluna_ref) FROM tabela;

-- MIN (valor mínimo)

SELECT coluna, MIN(coluna_ref) FROM tabela;

-- SUM (soma)

SELECT SUM(coluna) FROM tabela;

-- AVG (média)

SELECT AVG(coluna) FROM tabela;

-- COUNT (contagem)

SELECT COUNT(*) FROM tabela;

SELECT COUNT(*) AS alias FROM tabela GROUP BY coluna HAVING alias > 2; -- exemplo de contagem com apelido

-- GROUP BY (agrupamento)

SELECT coluna FROM tabela GROUP BY coluna_ref;

-- HAVING (cria uma condição, assim como WHERE - WHERE só cria condição para registros únicos, logo, não funciona para valores agregados)

SELECT coluna FROM tabela GROUP BY coluna_ref HAVING COUNT(coluna) > 2;

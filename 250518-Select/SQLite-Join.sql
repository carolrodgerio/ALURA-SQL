-- INNER JOIN (combina linhas de duas tabelas quando há correspondência entre as colunas especificadas)

SELECT * FROM tabela t
INNER JOIN tabela_ref r
ON t.id = r.id;

SELECT t.coluna, r.coluna FROM tabela t
INNER JOIN tabela_ref r
ON t.id = r.id;

SELECT t.coluna, r.coluna FROM tabela t
JOIN tabela_ref r -- JOIN = INNER JOIN
ON t.id = r.id;

-- LEFT JOIN (retorna todas as linhas da tabela da esquerda [a primeira mencionada] e as linhas correspondentes da tabela da direita)

-- RIGHT JOIN (oposto do LEFT JOIN)

-- FULL JOIN (combina as linhas de ambas as tabelas, com ou sem correspondência)

-- CROSS JOIN (menos utilizado, combina todas as linhas de cada tabela e gera todas as combinações possíveis)

-- SELECT ALL

SELECT * FROM tabela;

-- SELECT COM CONDIÇÃO (WHERE)

SELECT * FROM tabela WHERE coluna = 'X';
SELECT * FROM tabela WHERE NOT coluna = 'X';
SELECT * FROM tabela WHERE coluna_num <> 1; -- <> significa diferente, também pode ser utilizado !=
SELECT * FROM tabela WHERE coluna_num BETWEEN '1' AND '5';
SELECT * FROM tabela WHERE coluna_string > 'C'; -- filtrará as colunas que começam com a letra C em diante
SELECT * FROM tabela WHERE coluna_string LIKE 'B'; -- filtrará as colunas que sejam iguais a string "B"
SELECT * FROM tabela WHERE coluna_string LIKE 'B%'; -- filtrará as colunas que começam com a letra B
SELECT * FROM tabela WHERE coluna_data > '2025-05-17';
SELECT * FROM tabela WHERE coluna IN (1, 2, 3);
SELECT * FROM tabela WHERE coluna NOT IN (1, 2, 3);
SELECT * FROM tabela WHERE coluna IS NULL; -- variação: SELECT * FROM tabela WHERE coluna ISNULL
SELECT * FROM tabela WHERE coluna IS NOT NULL; -- variação: SELECT * FROM tabela WHERE coluna NOTNULL

-- SELECT COMPOSTO

SELECT * FROM tabela WHERE coluna = 'X' AND coluna_num <> 1;
SELECT * FROM tabela WHERE coluna_num < 30 OR coluna_string > 'E';

-- SELECT ORDENADO

SELECT * FROM tabela WHERE coluna = 'X' ORDER BY coluna2;
SELECT * FROM tabela WHERE coluna = 'X' ORDER BY coluna2 DESC;
SELECT * FROM tabela WHERE coluna = 'X' ORDER BY coluna2 DESC, coluna3 ASC; -- ordenação combinada

-- SELECT COM APELIDO (ALIAS)

SELECT coluna AS col FROM tabela;
SELECT coluna AS col, coluna_num AS num FROM tabela;

SELECT A.id AS id_1, B.id AS id_2
FROM coluna1 AS A
JOIN coluna2 AS B ON A.id = B.id;

-- SELECT DE LINHAS LIMITADAS

SELECT * FROM tabela LIMIT 5; -- retornará apenas as 5 primeiras linhas
SELECT * FROM tabela LIMIT 5 OFFSET 5; -- pulará os 5 primeiros registros e retornará os 5 registros subsequentes

-- SELECT DESPREZANDO DADOS DUPLICADOS (DISTINCT)

SELECT DISTINCT coluna FROM tabela;

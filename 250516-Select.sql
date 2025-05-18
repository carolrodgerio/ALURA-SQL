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


-- // -- // -- // -- // -- // FUNÇÕES DE AGREGAÇÃO // -- // -- // -- // -- // --

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


-- // -- // -- // -- // -- // FUNÇÕES DE STRINGS // -- // -- // -- // -- // --

-- LENGTH

SELECT LENGTH(coluna) FROM tabela;

-- CONCAT

SELECT ('texto' || coluna) FROM tabela;

-- OUTRAS FUNÇÕES

SELECT UPPER('texto' || coluna) FROM tabela; -- deixa todos os caracteres em maiúsculo

SELECT LOWER('texto' || coluna) FROM tabela; -- deixa todos os caracteres em minúsculo

SELECT TRIM(coluna, 'caractere') FROM tabela; -- remove espaços (ou outro conjunto especificado de caracteres) do início e do fim de uma string

SELECT INSTR(coluna, 'substring') FROM tabela; -- retorna a posição de uma substring dentro de uma string

SELECT REPLACE(coluna, 'string_anterior', 'nova_string') FROM tabela; -- substitui todas as ocorrências de uma substring específica por outra substring dentro de uma string

SELECT SUBSTR(coluna, 1, 5) FROM tabela; -- extrai uma parte de uma string com base em um ponto de início e um comprimento especificados


-- // -- // -- // -- // -- // FUNÇÕES DE DATA // -- // -- // -- // -- // --

SELECT STRFTIME('%Y/%M', coluna_data) FROM tabela; -- altera a formatação da data

SELECT JULIANDAY(coluna_fim) - JULIANDAY(coluna_inicio) FROM tabela; -- retorna a diferença de dias entre duas colunas de data

SELECT DATE('now'); -- retorna a data atual

SELECT DATE('now', '-10 days'); -- pode ser adicionado um modificador

SELECT TIME('now'); -- retorna o horário atual

SELECT DATETIME('now'); -- equivalente a SELECT CURRENT_TIMESTAMP, ambos retornam a data e hora atuais


-- // -- // -- // -- // -- // FUNÇÕES NUMÉRICAS // -- // -- // -- // -- // --

SELECT AVG(coluna), ROUND(AVG(coluna), 2) FROM tabela; -- arredonda o resultado em 2 casas decimais

SELECT CEIL(coluna) FROM tabela; -- arredonda o resultado para o maior inteiro

SELECT FLOOR(coluna) FROM tabela; -- arredonda o resultado para o menor

SELECT POWER(2, 3); -- retorna o resultado de 2 elevado a 3

SELECT SQRT(16); -- retorna a raiz quadrade de 16

SELECT RANDOM(); -- gera um número inteiro aleatório

SELECT ABS(-5); -- retorna o valor absoluto de -5 (5)

SELECT HEX('string'); -- converte um número ou uma string para sua forma hexadecimal


-- // -- // -- // -- // -- // ORDEM DAS CLÁUSULAS // -- // -- // -- // -- // --

-- SELECT -> FROM -> WHERE -> GROUP BY -> HAVING -> ORDER BY

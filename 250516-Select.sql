-- SELECT ALL

SELECT * FROM tabela;

-- SELECT COM CONDIÇÃO (WHERE)

SELECT * FROM tabela WHERE coluna = 'X';
SELECT * FROM tabela WHERE NOT coluna = 'X';
SELECT * FROM tabela WHERE coluna_num <> 1; -- <> significa diferente, também pode ser utilizado !=
SELECT * FROM tabela WHERE coluna_num BETWEEN '1' AND '5';
SELECT * FROM tabela WHERE coluna_string > 'C'; -- filtrará as colunas que começam com a letra C em diante
SELECT * FROM tabela WHERE coluna_string LIKE 'B'; -- filtrará as colunas que contenham a string "B"
SELECT * FROM tabela WHERE coluna_data > '2025-05-17';

-- SELECT COMPOSTO

SELECT * FROM tabela WHERE coluna = 'X' AND coluna_num <> 1;
SELECT * FROM tabela WHERE coluna_num < 30 OR coluna_string > 'E';

-- SELECT DESPREZANDO DADOS DUPLICADOS (DISTINCT)

SELECT DISTINCT coluna FROM tabela;

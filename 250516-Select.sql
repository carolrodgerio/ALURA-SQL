-- SELECT ALL

SELECT * FROM tabela;

-- SELECT COM CONDIÇÃO (WHERE)

SELECT * FROM tabela WHERE coluna = 'X';
SELECT * FROM tabela WHERE coluna_num <> 1; -- <> significa diferente, também pode ser utilizado !=
SELECT * FROM tabela WHERE coluna_string > 'C'; -- filtrará as colunas que começam com a letra C em diante
SELECT * FROM tabela WHERE coluna_data > '2025-05-17';

-- SELECT DESPREZANDO DADOS DUPLICADOS (DISTINCT)

SELECT DISTINCT coluna FROM tabela;

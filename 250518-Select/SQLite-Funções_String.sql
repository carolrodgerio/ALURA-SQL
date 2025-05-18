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

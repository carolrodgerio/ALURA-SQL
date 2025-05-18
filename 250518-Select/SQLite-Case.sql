-- a expressão CASE permite enquadrar diferentes linhas dentro de uma classificação determinada

SELECT coluna,
CASE
WHEN coluna < 5 THEN 'menor que 5'
WHEN coluna BETWEEN 6 AND 9 THEN 'entre 6 e 9'
ELSE 'maior que 9'
END AS descricao_coluna
FROM tabela;

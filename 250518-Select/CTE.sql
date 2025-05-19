-- common table expression

WITH subconsulta AS (
    SELECT coluna1, coluna2
    FROM tabela
    WHERE condição
)
SELECT *
FROM subconsulta
WHERE outra_condição;

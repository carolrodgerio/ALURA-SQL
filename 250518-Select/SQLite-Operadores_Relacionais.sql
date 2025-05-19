-- UNION (exibe dois selects ao mesmo tempo, eliminando duplicidades)

SELECT coluna FROM tabela_1
UNION
SELECT coluna FROM tabela_2;

-- UNION ALL (igual ao UNION, mas não remove duplicidades)

SELECT coluna FROM tabela_1
UNION ALL
SELECT coluna FROM tabela_2;

-- EXCEPT (retorna todas as linhas presentes na primeira consulta que não estão presentes na segunda)
SELECT coluna FROM tabela_1
EXCEPT
SELECT coluna FROM tabela_2;

-- INTERSECT (retorna todas as linhas presentes em ambas as colunas)
SELECT coluna FROM tabela_1
INTERSECT
SELECT coluna FROM tabela_2;

SELECT coluna 
FROM tabela 
WHERE id = (SELECT id FROM coluna_2); -- desta forma, retornará apenas o 1º valor informado

SELECT coluna 
FROM tabela 
WHERE id IN (SELECT id FROM coluna_2); -- adicionando o comando IN, todos os registros serão retornados

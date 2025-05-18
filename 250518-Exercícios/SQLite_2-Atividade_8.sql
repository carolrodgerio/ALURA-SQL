-- 1

SELECT AVG(nota) FROM Notas
WHERE id_disciplina = 2;

-- 2

SELECT * FROM Alunos
WHERE nome_aluno LIKE 'A%';

-- 3

SELECT * FROM Alunos
WHERE STRFTIME('%m', data_nascimento) = '02';

-- 4

SELECT *,
CAST((julianday('now') - julianday(data_nascimento)) / 365.25 AS INTEGER) AS idade
FROM Alunos;

-- 5

SELECT *,
CASE
WHEN nota >= 6 THEN 'Aprovado'
ELSE 'Reprovado'
END AS Status
FROM Notas;

-- 1

SELECT * FROM Disciplinas;

-- 2

SELECT a.Nome_Aluno, d.Nome_Disciplina, n.Nota FROM Alunos a
JOIN Notas n ON a.ID_Aluno = n.ID_Aluno
JOIN Disciplinas d ON n.ID_Disciplina = d.ID_Disciplina
WHERE n.Nota >= 6 AND d.Nome_Disciplina = 'Matemática';

-- 3

SELECT id_turma, COUNT(id_disciplina) From Turma_Disciplinas
GROUP BY id_turma;

-- 4

WITH aprovado AS (SELECT a.Nome_Aluno, d.Nome_Disciplina, n.Nota FROM Alunos a
JOIN Notas n ON a.ID_Aluno = n.ID_Aluno
JOIN Disciplinas d ON n.ID_Disciplina = d.ID_Disciplina
WHERE n.Nota >= 6),
reprovado AS (SELECT a.Nome_Aluno, d.Nome_Disciplina, n.Nota FROM Alunos a
JOIN Notas n ON a.ID_Aluno = n.ID_Aluno
JOIN Disciplinas d ON n.ID_Disciplina = d.ID_Disciplina
WHERE n.Nota < 6)
SELECT ((SELECT COUNT(*) FROM aprovado) * 100 / ((SELECT COUNT(*) FROM reprovado) + (SELECT COUNT(*) FROM aprovado))) AS percentual_aprovados;

-- 5

SELECT d.Nome_Disciplina, ROUND((SUM(CASE WHEN n.Nota >= 6 THEN 1 ELSE 0 END) * 100.0) / COUNT(*), 2) AS percentual_aprovados
FROM Notas n
JOIN Disciplinas d ON n.ID_Disciplina = d.ID_Disciplina
GROUP BY d.Nome_Disciplina;

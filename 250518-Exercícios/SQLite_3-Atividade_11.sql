-- 1

SELECT p.Nome_Professor, t.Nome_Turma from Turmas t
JOIN Professores p ON p.ID_Professor = t.ID_Professor_Orientador;

-- 2

SELECT a.Nome_Aluno, n.Nota
FROM Notas n
JOIN Disciplinas d ON d.ID_Disciplina = n.ID_Disciplina
JOIN Alunos a ON a.ID_Aluno = n.ID_Aluno
WHERE d.Nome_Disciplina = 'Matemática'
ORDER BY n.Nota DESC
LIMIT 1;

-- 3

SELECT id_turma, COUNT(id_aluno) from Turma_Alunos
GROUP BY id_turma;

-- 4

SELECT a.Nome_Aluno, d.Nome_Disciplina FROM Turma_Alunos ta
JOIN Turma_Disciplinas td ON ta.ID_Turma = td.ID_Turma
JOIN Disciplinas d ON d.ID_Disciplina = td.ID_Disciplina
JOIN Alunos a ON a.ID_Aluno = ta.ID_Aluno;

-- 5

CREATE VIEW vw_notas_alunos AS
SELECT a.Nome_Aluno, d.Nome_Disciplina, n.Nota
FROM Turma_Alunos ta
JOIN Turma_Disciplinas td ON ta.ID_Turma = td.ID_Turma
JOIN Disciplinas d ON d.ID_Disciplina = td.ID_Disciplina
JOIN Alunos a ON a.ID_Aluno = ta.ID_Aluno
JOIN Notas n ON n.ID_Aluno = a.ID_Aluno AND n.ID_Disciplina = d.ID_Disciplina;

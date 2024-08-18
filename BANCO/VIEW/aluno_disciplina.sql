CREATE VIEW vw_aluno_disciplina AS
SELECT aluno.matricula_aluno, aluno.nome_aluno AS aluno,
       disciplina.nome_disciplina AS disciplina
FROM aluno
INNER JOIN disciplina ON aluno.id_aluno = disciplina.id_disciplina;

CREATE VIEW vw_aluno_professor_disciplina AS
SELECT aluno.matricula_aluno, aluno.nome_aluno AS aluno,
       professor.matricula_prof, professor.nome_prof AS professor,
       disciplina.nome_disciplina AS disciplina
FROM aluno
INNER JOIN aluno_professor ON aluno.id_aluno = aluno_professor.id_aluno
INNER JOIN disciplina ON aluno_professor.id_aluno = disciplina.id_disciplina
INNER JOIN professor ON disciplina.id_disciplina = professor.id_prof;

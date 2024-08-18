SELECT professor.matricula_prof, professor.nome_prof AS professor,
       disciplina.nome_disciplina AS disciplina
FROM professor
INNER JOIN disciplina ON professor.id_prof = disciplina.id_disciplina;
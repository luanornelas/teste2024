CREATE TABLE aluno (
	id_aluno SERIAL PRIMARY KEY,
    matricula_aluno INT NOT NULL,
    nome_aluno VARCHAR(50) NOT NULL,
    cpf_aluno VARCHAR(50) NOT NULL,
    endereco_aluno VARCHAR(80) NOT NULL
);

CREATE TABLE professor (
	id_prof SERIAL PRIMARY KEY,
    matricula_prof INT NOT NULL,
    nome_prof VARCHAR(50) NOT NULL,
    cpf_prof VARCHAR(50) NOT NULL,
    endereco_prof VARCHAR(50) NOT NULL
);

CREATE TABLE disciplina (
	id_disciplina SERIAL PRIMARY KEY,
    nome_disciplina VARCHAR(50) NOT NULL,
	id_prof INT NOT NULL,
	FOREIGN KEY (id_prof) REFERENCES professor (id_prof)
);

CREATE TABLE aluno_professor (
	id_aluno INT NOT NULL,
	FOREIGN KEY (id_aluno) REFERENCES aluno (id_aluno),
	id_prof INT NOT NULL,
	FOREIGN KEY (id_prof) REFERENCES professor (id_prof),
	PRIMARY KEY (id_aluno, id_prof)
);
	
CREATE TABLE aluno_disciplina (
	id_aluno INT NOT NULL,
	FOREIGN KEY (id_aluno) REFERENCES aluno (id_aluno),
	id_disciplina INT NOT NULL,
	FOREIGN KEY (id_disciplina) REFERENCES disciplina (id_disciplina),
	PRIMARY KEY (id_aluno, id_disciplina)
);

CREATE DATABASE escola;
USE escola;
CREATE TABLE tab_alunos(
	id_aluno INT NOT NULL PRIMARY KEY IDENTITY,
	nome  VARCHAR(50) NOT NULL,
	email VARCHAR(50) NOT NULL,
	fone  VARCHAR(15) NOT NULL,
	foto  VARCHAR(50) NOT NULL
);

CREATE DATABASE escola;
USE escola;
CREATE TABLE tab_alunos(
	id_aluno INT NOT NULL PRIMARY KEY IDENTITY,
	nome  VARCHAR(50) NOT NULL,
	email VARCHAR(50) NOT NULL,
	fone  VARCHAR(15) NOT NULL,
	foto  VARCHAR(50) NOT NULL
);

CREATE TABLE tab_professores(
	id_professor INT NOT NULL PRIMARY KEY IDENTITY,
	nome VARCHAR(50) NOT NULL,
	email VARCHAR(50)NOT NULL,
	fone VARCHAR(15)NOT NULL,
	foto VARCHAR(50)NOT NULL,
	salario DECIMAL(10,2)NOT NULL
);

CREATE TABLE tab_salas(
	id_sala INT NOT NULL PRIMARY KEY IDENTITY,
	numero INT NOT NULL,
	capacidade INT NOT NULL,
	equipamento VARCHAR(3)NOT NULL
);

CREATE TABLE tab_turmas(
	id_turma INT NOT NULL PRIMARY KEY IDENTITY,
	nome VARCHAR(30) NOT NULL,
	id_aluno INT NOT NULL,
	id_professor INT NOT NULL,
	id_sala INT NOT NULL,

	CONSTRAINT fk_id_aluno
	FOREIGN KEY(id_aluno)
	REFERENCES tab_alunos(id_aluno),

	CONSTRAINT fk_id_professor
	FOREIGN KEY (id_professor)
	REFERENCES tab_professores(id_professor),

	CONSTRAINT fk_id_sala
	FOREIGN KEY(id_sala)
	REFERENCES tab_salas(id_sala)

);

INSERT INTO tab_alunos(nome,email,fone,foto)
VALUES
('João da Silva','joao@gmail.com','(11) 91111-1111','joao.jpg'),
('Maria Machadão','machadao@outlook.com','(11) 92222-2222','maria.jpg'),
('Chales','chales@uol.com','(11) 93333-3333','charles.jpg'),
('Manoel','manoel@gmail.com','(11) 94444-4444','manoel.jpg'),
('Danilo','danilo@bol.com','(11) 95555-5555','danilo.jpg'),
('Fatima','fatima@gmail.com','(11) 96666-6666','fatima.jpg'),
('Simone','simone@outlook.com','(11) 97777-7777','simone.jpg'),
('Tomas','tomas@bol.com','(11) 98888-8888','tomas.jpg'),
('Tereza','tereza@uol.com','(11) 99999-9999','tereza.jpg'),
('Beto','beto@gmail.com','(11) 91010-1010','beto.jpg');

INSERT INTO tab_professores(nome, email, fone, foto, salario)
VALUES
('Fábio','fabio@gmail.com','(11) 90000-0000','fabio.jpg',1500.00),
('Rafael','rafael@gmail.com','(11) 92222-2222','rafael.jpg',2500.00),
('Alexandre','alex@gmail.com','(11) 93333-3333','alexandre.jpg',2500.00),
('Anésio','anesio@gmail.com','(11) 94444-4444','anesio.jpg',2380.00);

INSERT INTO tab_salas(numero, capacidade, equipamento)
VALUES
(2,12,'WIN'),
(24,27,'WIN'),
(30,20,'WIN'),
(32,20,'MAC');

SELECT * FROM tab_alunos
SELECT * FROM tab_professores
SELECT * FROM tab_salas

INSERT INTO tab_turmas(nome, id_aluno,id_professor,id_sala)
VALUES
('SQL',1,1,1),
('SQL',2,1,1),
('SQL',3,1,1),

('C#',4,2,2),
('C#',5,2,2),
('C#',6,2,2),

('Redes',7,3,3),
('Redes',8,3,3),

('Excel',9,4,4),
('Excel',10,4,4);

-- Mostrar nome dos alunos e telefones

SELECT nome, fone FROM tab_alunos;

-- Mostrar nome dos alunos e email do gemail

SELECT nome, email FROM tab_alunos WHERE email LIKE '%@gmail.com';
-- no exemplo a cima o sinal de % serve como um caractere coringa exibe  tudo que tenha @gmail.com no final
-- %@gmail% este exemplo exibe tudo que está antes e depois de @gmail.com

-- Mostrar nome dos professores e salários

SELECT nome, salario FROM tab_professores;
-- Mostrar nome dos professores e salários maiores que 2400
SELECT nome, salario FROM tab_professores WHERE salario > 2400

-- Mostrar nome sos proferrosres e salarios entre 1200 e 2400


SELECT nome, salario FROM tab_professores WHERE salario >= 1200 and salario <= 2400

CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_alunos(
	id BIGINT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    nota DECIMAL(3,1) NOT NULL, 
    turma VARCHAR(255) NOT NULL,
    idade INT
);
INSERT INTO tb_alunos (nome, nota, turma, idade) VALUES
('Ana Beatriz Silva', 8.5, 'T1', 17),
('João Pedro Souza', 6.7, 'T1', 18),
('Maria Eduarda Lima', 7.2, 'T2', 16),
('Lucas Henrique Alves', 5.9, 'T2', 19),
('Gabriel Fernandes', 3.8, 'T3', 18),
('Juliana Costa', 9.0, 'T3', 17),
('Rafael Oliveira', 4.5, 'T4', 20),
('Camila Santos', 7.8, 'T4', 18);

SELECT * FROM tb_alunos;

SELECT * FROM tb_alunos WHERE nota > 7;

SELECT * FROM tb_alunos WHERE nota < 7;

UPDATE tb_alunos SET nota = 10 WHERE id = 4


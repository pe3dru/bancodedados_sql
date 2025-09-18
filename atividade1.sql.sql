/*Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema trabalhará com as informações dos colaboradores desta empresa. 
Crie uma tabela de colaboradores e determine 5 atributos relevantes dos colaboradores para se trabalhar com o serviço deste RH.
Insira nesta tabela no mínimo 5 dados (registros).
Faça um SELECT que retorne todes os colaboradores com o salário maior do que 2000.
Faça um SELECT que retorne todes os colaboradores com o salário menor do que 2000.
Ao término atualize um registro desta tabela através de uma query de atualização.
Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL)
e coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados.

*/CREATE DATABASE db_empresa;

USE db_empresa;

CREATE TABLE tb_colaboradores(
	id BIGINT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    idade INT,
    funcao VARCHAR(255) NOT NULL,
	salario DECIMAL (10.2) NOT NULL
);

INSERT INTO tb_colaboradores (nome, idade, funcao, salario) VALUES
('Ana Souza', 28, 'Analista de RH', 3200.00),
('Carlos Pereira', 35, 'Desenvolvedor', 4500.00),
('Fernanda Lima', 22, 'Assistente Administrativo', 1800.00),
('João Oliveira', 41, 'Gerente de Projetos', 7200.00),
('Mariana Alves', 30, 'Designer', 2600.00),
('Pedro Santos', 25, 'Estagiário', 1200.00),
('Roberta Silva', 38, 'Coordenadora de Marketing', 5100.00),
('Lucas Ferreira', 29, 'Suporte Técnico', 1900.00);

SELECT * FROM tb_colaboradores;

SELECT * FROM tb_colaboradores WHERE salario >= 2000;

SELECT * FROM tb_colaboradores WHERE salario < 2000;

UPDATE tb_colaboradores SET salario = 2000 WHERE id = 3


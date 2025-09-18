CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
	id BIGINT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    qtd INT,
    tipo VARCHAR(255) NOT NULL,
	preco DECIMAL (10.2) NOT NULL
);

INSERT INTO tb_produtos (nome, qtd, tipo, preco) VALUES
('Celular 64GB', 20, 'Celular', 1200.00),
('Celular 128GB', 15, 'Celular', 1500.00),
('Celular 264GB', 25, 'Celular', 1800.00),
('Notebook Básico', 18, 'Notebook', 2500.00),
('Notebook Gamer', 10, 'Notebook', 6500.00),
('Notebook Ultrafino', 12, 'Notebook', 4200.00),
('Mouse sem fio', 40, 'Acessório', 120.00),
('Teclado mecânico', 35, 'Acessório', 280.00);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 500;

SELECT * FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos SET preco = 150 WHERE id = 7

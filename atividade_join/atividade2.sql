CREATE DATABASE db_pizzaria;

USE db_pizzaria;

CREATE TABLE tb_categorias(
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
	tipo VARCHAR(255) NOT NULL,
	descricao VARCHAR(255) NOT NULL
);
INSERT INTO tb_categorias (tipo, descricao) VALUES
('Salgada', 'Pizzas com recheios salgados como frango, calabresa ou presunto'),
('Doce', 'Pizzas com recheios doces como chocolate, frutas ou doce de leite'),
('Vegetariana', 'Pizzas sem carne, com vegetais e queijos variados'),
('Infantil', 'Pizzas simples e leves, ideais para crianças'),
('Sem glúten', 'Pizzas preparadas sem glúten, para dietas especiais');

CREATE TABLE tb_pizzas(
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    descricao VARCHAR(255),
    preco DECIMAL(10,2) NOT NULL,
    tamanho VARCHAR(2) NOT NULL,
    id_categoria BIGINT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
);

INSERT INTO tb_pizzas (nome, descricao, preco, tamanho, id_categoria) VALUES
('Frango com Catupiry', 'Frango desfiado e catupiry', 45.00, 'M', 1),
('Calabresa', 'Calabresa fatiada com cebola', 48.00, 'G', 1),
('Margherita', 'Mussarela, tomate e manjericão', 42.00, 'M', 3),
('Quatro Queijos', 'Mussarela, provolone, gorgonzola e catupiry', 60.00, 'G', 3),
('Portuguesa', 'Presunto, ovo, cebola e azeitona', 50.00, 'G', 1),
('Chocolate', 'Chocolate ao leite com morango', 52.00, 'M', 2),
('Pizza Infantil', 'Presunto, mussarela e tomate', 38.00, 'P', 4),
('Banana com Canela', 'Banana fatiada e canela polvilhada', 55.00, 'M', 5);

SELECT * FROM tb_categorias;
SELECT * FROM tb_pizzas;

SELECT * FROM tb_pizzas WHERE preco > 45;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50 AND 100;

SELECT * FROM tb_pizzas WHERE nome LIKE "%c%";

SELECT nome, tb_pizzas.descricao, preco, tamanho, tb_categorias.tipo, tb_categorias.descricao 
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_categorias.id = tb_pizzas.id_categoria;

SELECT nome, tb_pizzas.descricao, preco, tamanho, tb_categorias.tipo, tb_categorias.descricao 
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_categorias.id = tb_pizzas.id_categoria
WHERE tb_categorias.tipo = "salgada";

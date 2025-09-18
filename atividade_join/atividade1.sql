CREATE DATABASE db_gameonline;

USE db_gameonline;

CREATE TABLE tb_classes(
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    tipo VARCHAR(255) NOT NULL,
    descricao VARCHAR(255) NOT NULL
);

INSERT INTO tb_classes (tipo, descricao) VALUES
('Waterbender', 'Controlador da água e sua fluidez'),
('Firebender', 'Dominador das chamas e calor'),
('Airbender', 'Mestre da leveza e do vento'),
('Earthbender', 'Manipulador da terra e minerais'),
('Lightningbender', 'Mestre do relâmpago e eletricidade');

CREATE TABLE tb_personagens(
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    ataque INT,
    defesa INT,
    vida INT,
    id_classe BIGINT,
    FOREIGN KEY (id_classe) REFERENCES tb_classes(id)
);

INSERT INTO tb_personagens (nome, ataque, defesa, vida, id_classe) VALUES
('Katara', 3200, 2000, 4500, 1),
('Pakku', 2500, 1800, 4200, 1),
('Zuko', 2800, 1700, 4000, 2),
('Azula', 3000, 1600, 3900, 2),
('Iroh', 3500, 2200, 4700, 2),
('Aang', 4000, 2500, 5000, 3),
('Gyatso', 2700, 1900, 4300, 3),
('Tenzin', 2600, 1850, 4400, 3);

SELECT * FROM tb_classes;

SELECT * FROM tb_personagens;

SELECT * FROM tb_personagens WHERE ataque > 2000;

SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE "%c%";

SELECT nome, ataque, defesa, vida, tb_classes.tipo, tb_classes.descricao 
FROM tb_personagens INNER JOIN tb_classes
ON tb_classes.id = tb_personagens.id_classe;

SELECT nome, ataque, defesa, vida, tb_classes.tipo, tb_classes.descricao 
FROM tb_personagens INNER JOIN tb_classes
ON tb_classes.id = tb_personagens.id_classe 
WHERE tb_classes.tipo = "Waterbender";

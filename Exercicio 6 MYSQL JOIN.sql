CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_categoria (
id BIGINT AUTO_INCREMENT,
nome_categoria VARCHAR (255),
matricula INT,
PRIMARY KEY (id)
);

CREATE TABLE tb_cursos (
id BIGINT AUTO_INCREMENT,
curso VARCHAR (255),
instituicao VARCHAR (255),
turma INT (255),
cidade VARCHAR (255),	
valor INT,
categoria_id BIGINT,

PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id)
);

-- inserção dos valores da tabela de categoria
INSERT INTO tb_categoria (nome_categoria, matricula)
VALUE ("Desenvolvedor Java", 102030);

INSERT INTO tb_categoria (nome_categoria, matricula)
VALUE ("Administração", 112131);

INSERT INTO tb_categoria (nome_categoria, matricula)
VALUE ("Eventos Corporativos", 122232);

INSERT INTO tb_categoria (nome_categoria, matricula)
VALUE ("Web Designer", 132333);

INSERT INTO tb_categoria (nome_categoria, matricula)
VALUE ("Marketing", 142434);

SELECT * FROM tb_categoria	;

-- tb_cursos
INSERT INTO tb_cursos (curso, instituicao, turma, cidade, valor, categoria_id)
VALUE ("Assistente Administrativo", "Senac", 15, "Taboão da Serra", 100, 1);

INSERT INTO tb_cursos (curso, instituicao, turma, cidade, valor, categoria_id)
VALUE ("Java Full Stack Junior", "Generation", 59, "São Paulo", 600, 2);

INSERT INTO tb_cursos (curso, instituicao, turma, cidade, valor, categoria_id)
VALUE ("Fotografia", "Belas Artes", 23, "São Paulo", 900, 3);

INSERT INTO tb_cursos (curso, instituicao, turma, cidade, valor, categoria_id)
VALUE ("Java Script", "Unip", 10, "Cotia", 700, 4);

INSERT INTO tb_cursos (curso, instituicao, turma, cidade, valor, categoria_id)
VALUE ("Gestão em RH", "Universidade Anhanguera", 35, "Osasco", 500, 5);

INSERT INTO tb_cursos (curso, instituicao, turma, cidade, valor, categoria_id)
VALUE ("Marketing Digital", "UNINOVE", 15, "Campinas", 400, 6);

INSERT INTO tb_cursos (curso, instituicao, turma, cidade, valor, categoria_id)
VALUE ("Direito", "USP", 56, "São Paulo", 1000, 3);

INSERT INTO tb_cursos (curso, instituicao, turma, cidade, valor, categoria_id)
VALUE ("Gestão Financeira", "FAM", 21, "Embu das Artes", 400, 2);

INSERT INTO tb_cursos (curso, instituicao, turma, cidade, valor, categoria_id)
VALUE ("Comercio Exterior", "Anhembi Morumbi", 26, "Alphavile", 950, 5);

INSERT INTO tb_cursos (curso, instituicao, turma, cidade, valor, categoria_id)
VALUE ("Educação Física)", "FMU", 33, "São Paulo", 850, 3);

-- consulta de todos os dados da tabela de cursos
SELECT * FROM tb_cursos;

-- consulta toddos dados da tabela de cursos onde os valores sao maiores que 500 reais
SELECT * FROM tb_cursos WHERE valor > 500;

-- modo 1
-- consultar todos os dados da tabela de cursos onde os valores estão entre 600 e 1000 reais
SELECT * FROM tb_cursos WHERE valor >  600  AND valor <  1000;

-- modo 2
SELECT *
FROM tb_cursos
WHERE valor BETWEEN 600 AND 1000;

-- Faça um SELECT utilizando o operador LIKE, buscando todos os cursos que possuam a letra J no atributo nome
SELECT * FROM tb_cursos WHERE curso LIKE "%J%";

SELECT  *  FROM tb_cursos
INNER JOIN tb_categoria
ON  tb_categoria . id  =  tb_cursos . categoria_id

-- além do join aqui faremos uma CONDIÇÃO, para trazer os dados da tabela cursos, junto com os dados da tabela de categoria SOMENTE onde o nome da categoria for igual a Web Designer
WHERE nome_categoria LIKE "%Web Designer%";

-- CONSULTA BÔNUS
SELECT  *  FROM tb_cursos
INNER JOIN tb_categoria
ON  tb_cursos . categoria_id  =  tb_categoria.id
-- aqui a condição diz para trazer somente os dados da tabela de curso com os dados da tabela de categoria se o ID da categoria for igual ao numero indicado
WHERE tb_categoria.id  = 4  ;
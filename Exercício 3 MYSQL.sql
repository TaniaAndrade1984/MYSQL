CREATE DATABASE escola;
USE escola; 
CREATE TABLE estudante(
id BIGINT AUTO_INCREMENT, 
nome VARCHAR (255),
cpf VARCHAR (255), 
nota INT,
aniversario DATE, 
turma VARCHAR (255),
PRIMARY KEY (id)
);
INSERT INTO estudante (nome, cpf, nota, aniversario, turma)
VALUES ("Tânia", "30110285311", 7, '1984-04-19', "turma 10");

INSERT INTO estudante (nome, cpf, nota, aniversario, turma)
VALUES ("Teresa", 22582578960, 5, '1981-04-12', "turma 11");

INSERT INTO estudante (nome, cpf, nota, aniversario, turma)
VALUES ("Tatiane", 3582578960, 6, '1982-05-26', "turma 12");

INSERT INTO estudante (nome, cpf, nota, aniversario, turma)
VALUES ("Maria", 22358729825, 9, '1957-05-05', "turma 13");

INSERT INTO estudante (nome, cpf, nota, aniversario, turma)
VALUES ("Paulo", 40185276952, 8, '1976-05-21', "turma 14");

SELECT * FROM estudante;

SELECT * FROM estudante WHERE nota > 7;

SELECT * FROM estudante WHERE nota < 7;



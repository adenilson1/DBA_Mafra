-- Active: 1746303585699@@172.17.0.3@3306
/*Modelagem Banco de Dados*/
/*PRIMEIRA FORMA NORMAL - MASI EXTENSA, POSSUI 3 REGRAS*/
/*
 1ª REGRA: TODO CAMPO VETORIZADO SE TORNARÁ OUTRA TABELA, MESMA NATURAEZA
 EXEMPLO.:
 
 [AMARELO, AZUL, LARANJA, VERDER] -> CORES
 [KA, FIESTA, UNO, CIVIC] -> CARROS
 [981404539, 999407140, 978653421] -> TELEFONE
 
 2ª TODO CAMPO MULVALORADO SE TORNARÁ OUTRA TABELA, MULTIVALORADO
 É QUANDO CAMPO PODE SER DIVISIVEL. NATURAEZA DIFERENTES.
 EXEMPLO.:
 [RUA, BAIRRO, CIDADE, UF] -> ENDERECO
 
 3ª TODA TABELA NECESSITA PELO MENOS UM CAMPO QUE IDENTICA
 TODO O REGISTRO COMO SENDO UNICO 
 . ISSO É O QUE CHAMAMOS DE CHAVE PRIMARIA (PRIMARY KEY)
 
 NOTA: NAO SE MODELA PRO PROCESSEDIMENTO OU NEGOCIO, PORQUE ELES
 PODEM MUDAR.*/
/*CARDINALIDADE (X,Y)
 
 QUEM DEFINE A CARDINALIDADE É A REGRA DE NEGOCIO
 
 -> PRIMEIRO ALGARISMO (X)= OBRIGATORIEDADE
 0-> NÃO OBRIGATORIO
 1-> OBRIGATORIO
 
 SEGUNDO ALGARISMO (Y) = CARDINALIDADE
 1 -> MINIMO
 n -> MAIS DE UM
 */
SHOW DATABASES;

+--------------------+
| Database           |
+--------------------+
| LIVRARIA           |
| LIVRARIA01         |
| PROJETO            |
| exercicio          |
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+

CREATE DATABASE COMERCIO;

SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| COMERCIO           |
| LIVRARIA           |
| LIVRARIA01         |
| PROJETO            |
| exercicio          |
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+

USE COMERCIO;

/*CRIANDO TABELAS*/

/*CLIENTE*/

CREATE TABLE CLIENTE(
IDCLIENTE INT PRIMARY KEY AUTO_INCREMENT,
NOME VARCHAR(30) NOT NULL,
SEXO ENUM('M', 'F') NOT NULL,
CPF VARCHAR(15) UNIQUE,
EMAIL VARCHAR(50) UNIQUE
);

DESC CLIENTE;
+-----------+---------------+------+-----+---------+----------------+
| Field     | Type          | Null | Key | Default | Extra          |
+-----------+---------------+------+-----+---------+----------------+
| IDCLIENTE | int           | NO   | PRI | NULL    | auto_increment |
| NOME      | varchar(30)   | NO   |     | NULL    |                |
| SEXO      | enum('M','F') | NO   |     | NULL    |                |
| CPF       | varchar(15)   | YES  | UNI | NULL    |                |
| EMAIL     | varchar(50)   | YES  | UNI | NULL    |                |
+-----------+---------------+------+-----+---------+----------------+

/*TELEFONE*/

CREATE TABLE TELEFONE(
IDTELEFONE INT PRIMARY KEY AUTO_INCREMENT,
TIPO ENUM('RES','CEL','COM'),
NUMERO VARCHAR(10)
);

DESC TELEFONE;
+------------+-------------------------+------+-----+---------+----------------+
| Field      | Type                    | Null | Key | Default | Extra          |
+------------+-------------------------+------+-----+---------+----------------+
| IDTELEFONE | int                     | NO   | PRI | NULL    | auto_increment |
| TIPO       | enum('RES','CEL','COM') | YES  |     | NULL    |                |
| NUMERO     | varchar(10)             | YES  |     | NULL    |                |
+------------+-------------------------+------+-----+---------+----------------+



/*ENDERECO*/
CREATE TABLE ENDERECO(
IDENDERECO INT PRIMARY KEY AUTO_INCREMENT,
RUA VARCHAR(30) NOT NULL,
BAIRRO VARCHAR(30) NOT NULL,
CIDADE VARCHAR(30) NOT NULL,
ESTADO CHAR(2) NOT NULL
);

DESC ENDERECO;
+------------+-------------+------+-----+---------+----------------+
| Field      | Type        | Null | Key | Default | Extra          |
+------------+-------------+------+-----+---------+----------------+
| IDENDERECO | int         | NO   | PRI | NULL    | auto_increment |
| RUA        | varchar(30) | NO   |     | NULL    |                |
| BAIRRO     | varchar(30) | NO   |     | NULL    |                |
| CIDADE     | varchar(30) | NO   |     | NULL    |                |
| ESTADO     | char(2)     | NO   |     | NULL    |                |
+------------+-------------+------+-----+---------+----------------+

/*ENTENDO A FOREIGN KEY*/

/*APAGANDO TABLEA -DROP*/

DROP TABLE CLIENTE;

SHOW TABLES;
+--------------------+
| Tables_in_COMERCIO |
+--------------------+
| ENDERECO           |
| TELEFONE           |
+--------------------+
/*REFAZENDO COM FK*/

CREATE TABLE CLIENTE(
IDCLIENTE INT PRIMARY KEY AUTO_INCREMENT,
NOME VARCHAR(30) NOT NULL,
SEXO ENUM('M', 'F') NOT NULL,
CPF VARCHAR(15) UNIQUE,
EMAIL VARCHAR(50) UNIQUE
);

SHOW TABLES;
+--------------------+
| Tables_in_COMERCIO |
+--------------------+
| CLIENTE            |
| ENDERECO           |
| TELEFONE           |
+--------------------+

/*CONSTRAINT - REGRA*/
DROP TABLE ENDERECO;
DROP TABLE TELEFONE;

/*RELAÇÃO (1,1) -> UNIQUE*/
CREATE TABLE ENDERECO(
IDENDERECO INT PRIMARY KEY AUTO_INCREMENT,
RUA VARCHAR(30) NOT NULL,
BAIRRO VARCHAR(30) NOT NULL,
CIDADE VARCHAR(30) NOT NULL,
ESTADO CHAR(2) NOT NULL,
ID_CLIENTE INT UNIQUE, 
FOREIGN KEY(ID_CLIENTE)
REFERENCES CLIENTE(IDCLIENTE)
);

/*RELAÇÃO (1,N) -> SEM UNIQUE*/
CREATE TABLE TELEFONE(
IDTELEFONE INT PRIMARY KEY AUTO_INCREMENT,
TIPO ENUM('RES','CEL','COM'),
NUMERO VARCHAR(10),
ID_CLIENTE INT, 
FOREIGN KEY(ID_CLIENTE)
REFERENCES CLIENTE(IDCLIENTE)
);

DESC ENDERECO;
+------------+-------------+------+-----+---------+----------------+
| Field      | Type        | Null | Key | Default | Extra          |
+------------+-------------+------+-----+---------+----------------+
| IDENDERECO | int         | NO   | PRI | NULL    | auto_increment |
| RUA        | varchar(30) | NO   |     | NULL    |                |
| BAIRRO     | varchar(30) | NO   |     | NULL    |                |
| CIDADE     | varchar(30) | NO   |     | NULL    |                |
| ESTADO     | char(2)     | NO   |     | NULL    |                |
| ID_CLIENTE | int         | YES  | UNI | NULL    |                |
+------------+-------------+------+-----+---------+----------------+

DESC TELEFONE;
+------------+-------------------------+------+-----+---------+----------------+
| Field      | Type                    | Null | Key | Default | Extra          |
+------------+-------------------------+------+-----+---------+----------------+
| IDTELEFONE | int                     | NO   | PRI | NULL    | auto_increment |
| TIPO       | enum('RES','CEL','COM') | YES  |     | NULL    |                |
| NUMERO     | varchar(10)             | YES  |     | NULL    |                |
| ID_CLIENTE | int                     | YES  | MUL | NULL    |                |
+------------+-------------------------+------+-----+---------+----------------+

/*
INFRAESTRUTURA: SERVIÇOS, PASSWORD
*/

/*INSERINDO DADOS*/

DESC CLIENTE;
+-----------+---------------+------+-----+---------+----------------+
| Field     | Type          | Null | Key | Default | Extra          |
+-----------+---------------+------+-----+---------+----------------+
| IDCLIENTE | int           | NO   | PRI | NULL    | auto_increment |
| NOME      | varchar(30)   | NO   |     | NULL    |                |
| SEXO      | enum('M','F') | NO   |     | NULL    |                |
| CPF       | varchar(15)   | YES  | UNI | NULL    |                |
| EMAIL     | varchar(50)   | YES  | UNI | NULL    |                |
+-----------+---------------+------+-----+---------+----------------+

INSERT INTO CLIENTE(IDCLIENTE, NOME, SEXO, CPF, EMAIL)
VALUES(NULL, 'JOAO', 'M', '76567587887', 'JOAO@IG.COM');

INSERT INTO CLIENTE(IDCLIENTE, NOME, SEXO, CPF, EMAIL)
VALUES(NULL, 'CARLOS', 'M', '5464553466', 'CARLOS@IG.COM');

INSERT INTO CLIENTE(IDCLIENTE, NOME, SEXO, CPF, EMAIL)
VALUES(NULL, 'ANA', 'F', '456545678', 'ANA@IG.COM');

INSERT INTO CLIENTE(IDCLIENTE, NOME, SEXO, CPF, EMAIL)
VALUES(NULL, 'CLARA', 'F', '5687766856', NULL);

INSERT INTO CLIENTE(IDCLIENTE, NOME, SEXO, CPF, EMAIL)
VALUES(NULL, 'JORGE', 'M', '8756547688', 'JORGE@IG.COM');

INSERT INTO CLIENTE(IDCLIENTE, NOME, SEXO, CPF, EMAIL)
VALUES(NULL, 'CELIA', 'F', '5767876889', 'CELIA@IG.COME');

/*INSERT INTO CLIENTE(IDCLIENTE, NOME, SEXO, CPF, EMAIL)
VALUES(NULL, '', '', '', '');*/

SELECT * FROM CLIENTE;
+-----------+--------+------+-------------+---------------+
| IDCLIENTE | NOME   | SEXO | CPF         | EMAIL         |
+-----------+--------+------+-------------+---------------+
|         1 | JOAO   | M    | 76567587887 | JOAO@IG.COM   |
|         2 | CARLOS | M    | 5464553466  | CARLOS@IG.COM |
|         3 | ANA    | F    | 456545678   | ANA@IG.COM    |
|         4 | CLARA  | F    | 5687766856  | NULL          |
|         5 | JORGE  | M    | 8756547688  | JORGE@IG.COM  |
|         6 | CELIA  | F    | 5767876889  | CELIA@IG.COME |
+-----------+--------+------+-------------+---------------+

/*INSERÇÕES EM RELACIONAMENTO 1 X 1 */

DESC ENDERECO;
+------------+-------------+------+-----+---------+----------------+
| Field      | Type        | Null | Key | Default | Extra          |
+------------+-------------+------+-----+---------+----------------+
| IDENDERECO | int         | NO   | PRI | NULL    | auto_increment |
| RUA        | varchar(30) | NO   |     | NULL    |                |
| BAIRRO     | varchar(30) | NO   |     | NULL    |                |
| CIDADE     | varchar(30) | NO   |     | NULL    |                |
| ESTADO     | char(2)     | NO   |     | NULL    |                |
| ID_CLIENTE | int         | YES  | UNI | NULL    |                |
+------------+-------------+------+-----+---------+----------------+

INSERT INTO ENDERECO(IDENDERECO, RUA, BAIRRO, CIDADE, ESTADO, ID_CLIENTE)
VALUES(NULL, 'RUA ANTONIO SA', 'CENTRO', 'BELO HORIZONTE', 'MG', 4);

INSERT INTO ENDERECO(IDENDERECO, RUA, BAIRRO, CIDADE, ESTADO, ID_CLIENTE)
VALUES(NULL, 'RUA CAPITAO HERMES', 'CENTRO', 'RIO DE JANEIRO', 'RJ', 1);

INSERT INTO ENDERECO(IDENDERECO, RUA, BAIRRO, CIDADE, ESTADO, ID_CLIENTE)
VALUES(NULL, 'RUA PRES VARGAS', 'JARDINS', 'SAO PAULO', 'SP', 3);

INSERT INTO ENDERECO(IDENDERECO, RUA, BAIRRO, CIDADE, ESTADO, ID_CLIENTE)
VALUES(NULL, 'RUA ALFANDEGA', 'ESTACIO', 'RIO DE JANEIRO', 'RJ', 2);

INSERT INTO ENDERECO(IDENDERECO, RUA, BAIRRO, CIDADE, ESTADO, ID_CLIENTE)
VALUES(NULL, 'RUA DO OUVIDOR', 'FLAMENGO', 'RIO DE JANEIRO', 'RJ', 6);

INSERT INTO ENDERECO(IDENDERECO, RUA, BAIRRO, CIDADE, ESTADO, ID_CLIENTE)
VALUES(NULL, 'RUA URUGUAIANA', 'CENTRO', 'VITORIA', 'ES', 5);


SELECT * FROM ENDERECO;
+------------+--------------------+----------+----------------+--------+------------+
| IDENDERECO | RUA                | BAIRRO   | CIDADE         | ESTADO | ID_CLIENTE |
+------------+--------------------+----------+----------------+--------+------------+
|          1 | RUA ANTONIO SA     | CENTRO   | BELO HORIZONTE | MG     |          4 |
|          2 | RUA CAPITAO HERMES | CENTRO   | RIO DE JANEIRO | RJ     |          1 |
|          3 | RUA PRES VARGAS    | JARDINS  | SAO PAULO      | SP     |          3 |
|          4 | RUA ALFANDEGA      | ESTACIO  | RIO DE JANEIRO | RJ     |          2 |
|          5 | RUA DO OUVIDOR     | FLAMENGO | RIO DE JANEIRO | RJ     |          6 |
|          6 | RUA URUGUAIANA     | CENTRO   | VITORIA        | ES     |          5 |
+------------+--------------------+----------+----------------+--------+------------+
/* NOTA: A FK NAO SE REPETE*/


/*INSERÇÕES 1 X N*/

DESC TELEFONE;
+------------+-------------------------+------+-----+---------+----------------+
| Field      | Type                    | Null | Key | Default | Extra          |
+------------+-------------------------+------+-----+---------+----------------+
| IDTELEFONE | int                     | NO   | PRI | NULL    | auto_increment |
| TIPO       | enum('RES','CEL','COM') | YES  |     | NULL    |                |
| NUMERO     | varchar(10)             | YES  |     | NULL    |                |
| ID_CLIENTE | int                     | YES  | MUL | NULL    |                |
+------------+-------------------------+------+-----+---------+----------------+

INSERT INTO TELEFONE(IDTELEFONE, TIPO, NUMERO, ID_CLIENTE)
VALUES (NULL, 'CEL', '78458743', 5);

INSERT INTO TELEFONE(IDTELEFONE, TIPO, NUMERO, ID_CLIENTE)
VALUES (NULL, 'RES', '56576876', 5);

INSERT INTO TELEFONE(IDTELEFONE, TIPO, NUMERO, ID_CLIENTE)
VALUES (NULL, 'COM', '87866896', 1);

INSERT INTO TELEFONE(IDTELEFONE, TIPO, NUMERO, ID_CLIENTE)
VALUES (NULL, 'RES', '54768899', 2);

INSERT INTO TELEFONE(IDTELEFONE, TIPO, NUMERO, ID_CLIENTE)
VALUES (NULL, 'CEL', '99667587', 1);

INSERT INTO TELEFONE(IDTELEFONE, TIPO, NUMERO, ID_CLIENTE)
VALUES (NULL, 'CEL', '78989765', 3);

INSERT INTO TELEFONE(IDTELEFONE, TIPO, NUMERO, ID_CLIENTE)
VALUES (NULL, 'CEL', '99766676', 3);

INSERT INTO TELEFONE(IDTELEFONE, TIPO, NUMERO, ID_CLIENTE)
VALUES (NULL, 'COM', '66687899', 1);

INSERT INTO TELEFONE(IDTELEFONE, TIPO, NUMERO, ID_CLIENTE)
VALUES (NULL, 'RES', '89986668', 5);

INSERT INTO TELEFONE(IDTELEFONE, TIPO, NUMERO, ID_CLIENTE)
VALUES (NULL, 'CEL', '88687909', 2);

SELECT * FROM TELEFONE;
+------------+------+----------+------------+
| IDTELEFONE | TIPO | NUMERO   | ID_CLIENTE |
+------------+------+----------+------------+
|          1 | CEL  | 78458743 |          5 |
|          2 | RES  | 56576876 |          5 |
|          3 | COM  | 87866896 |          1 |
|          4 | RES  | 54768899 |          2 |
|          5 | CEL  | 99667587 |          1 |
|          6 | CEL  | 78989765 |          3 |
|          7 | CEL  | 99766676 |          3 |
|          8 | COM  | 66687899 |          1 |
|          9 | RES  | 89986668 |          5 |
|         10 | CEL  | 88687909 |          2 |
+------------+------+----------+------------+


/*NOTA: A PARTE N DO RELACIONAMENTO PODE SE REPETIR*/

/*
PARTES DE UMA QUERY: SELEÇÃO EO PROJEÇÃO E JUNÇÃO
*/

/*PROJEÇÃO:
É TUDO QUE SE DESEJA VER NA TELA - COMANDO SELECT 
*/

SELECT * FROM TELEFONE;
+------------+------+----------+------------+
| IDTELEFONE | TIPO | NUMERO   | ID_CLIENTE |
+------------+------+----------+------------+
|          1 | CEL  | 78458743 |          5 |
|          2 | RES  | 56576876 |          5 |
|          3 | COM  | 87866896 |          1 |
|          4 | RES  | 54768899 |          2 |
|          5 | CEL  | 99667587 |          1 |
|          6 | CEL  | 78989765 |          3 |
|          7 | CEL  | 99766676 |          3 |
|          8 | COM  | 66687899 |          1 |
|          9 | RES  | 89986668 |          5 |
|         10 | CEL  | 88687909 |          2 |
+------------+------+----------+------------+

SELECT TIPO, NUMERO FROM TELEFONE;
+------+----------+
| TIPO | NUMERO   |
+------+----------+
| CEL  | 78458743 |
| RES  | 56576876 |
| COM  | 87866896 |
| RES  | 54768899 |
| CEL  | 99667587 |
| CEL  | 78989765 |
| CEL  | 99766676 |
| COM  | 66687899 |
| RES  | 89986668 |
| CEL  | 88687909 |
+------+----------+

SELECT NOW() AS DATA_ATUAL;
+---------------------+
| DATA_ATUAL          |
+---------------------+
| 2025-05-28 20:46:17 |
+---------------------+

SELECT 2 + 2 AS SOMA;
+------+
| SOMA |
+------+
|    4 |
+------+

/* SELEÇÃO:
FILTRA UMA PESQUISA NO BANCO DE DADOS - COMANDO WHERE.
É UM SUBCONJUNTO DO CONJUNTO TOTAL DE REGISTROS DE 
UMA TABELA
*/

SELECT NOME, SEXO, EMAIL FROM CLIENTE
WHERE SEXO = 'F';
+-------+------+---------------+
| NOME  | SEXO | EMAIL         |
+-------+------+---------------+
| ANA   | F    | ANA@IG.COM    |
| CLARA | F    | NULL          |
| CELIA | F    | CELIA@IG.COME |
+-------+------+---------------+

SELECT NUMERO FROM TELEFONE
WHERE TIPO = 'CEL';
+----------+
| NUMERO   |
+----------+
| 78458743 |
| 99667587 |
| 78989765 |
| 99766676 |
| 88687909 |
+----------+

/*JUNCAO - JOINS*/
SELECT NOME, EMAIL, IDCLIENTE
FROM CLIENTE;
+--------+---------------+-----------+
| NOME   | EMAIL         | IDCLIENTE |
+--------+---------------+-----------+
| JOAO   | JOAO@IG.COM   |         1 |
| CARLOS | CARLOS@IG.COM |         2 |
| ANA    | ANA@IG.COM    |         3 |
| CLARA  | NULL          |         4 |
| JORGE  | JORGE@IG.COM  |         5 |
| CELIA  | CELIA@IG.COME |         6 |
+--------+---------------+-----------+

SELECT ID_CLIENTE, BAIRRO, CIDADE 
FROM ENDERECO;
+------------+----------+----------------+
| ID_CLIENTE | BAIRRO   | CIDADE         |
+------------+----------+----------------+mysq
|          4 | CENTRO   | BELO HORIZONTE |
|          1 | CENTRO   | RIO DE JANEIRO |
|          3 | JARDINS  | SAO PAULO      |
|          2 | ESTACIO  | RIO DE JANEIRO |
|          6 | FLAMENGO | RIO DE JANEIRO |
|          5 | CENTRO   | VITORIA        |
+------------+----------+----------------+

SELECT NOME, SEXO, BAIRRO, CIDADE 
FROM CLIENTE, ENDERECO
WHERE IDCLIENTE = ID_CLIENTE;
+--------+------+----------+----------------+
| NOME   | SEXO | BAIRRO   | CIDADE         |
+--------+------+----------+----------------+
| CLARA  | F    | CENTRO   | BELO HORIZONTE |
| JOAO   | M    | CENTRO   | RIO DE JANEIRO |
| ANA    | F    | JARDINS  | SAO PAULO      |
| CARLOS | M    | ESTACIO  | RIO DE JANEIRO |
| CELIA  | F    | FLAMENGO | RIO DE JANEIRO |
| JORGE  | M    | CENTRO   | VITORIA        |
+--------+------+----------+----------------+
/* NOTA: NÃO USAR ESSE METEDO*/


SELECT NOME, SEXO, BAIRRO, CIDADE 
FROM CLIENTE, ENDERECO
WHERE IDCLIENTE = ID_CLIENTE
AND SEXO = 'F';
+-------+------+----------+----------------+
| NOME  | SEXO | BAIRRO   | CIDADE         |
+-------+------+----------+----------------+
| ANA   | F    | JARDINS  | SAO PAULO      |
| CLARA | F    | CENTRO   | BELO HORIZONTE |
| CELIA | F    | FLAMENGO | RIO DE JANEIRO |
+-------+------+----------+----------------+

/*FORMA CORRETA*/
SELECT NOME, SEXO, BAIRRO, CIDADE 
FROM CLIENTE
I	NNER JOIN ENDERECO
	ON IDCLIENTE = ID_CLIENTE;
+--------+------+----------+----------------+
| NOME   | SEXO | BAIRRO   | CIDADE         |
+--------+------+----------+----------------+
| JOAO   | M    | CENTRO   | RIO DE JANEIRO |
| CARLOS | M    | ESTACIO  | RIO DE JANEIRO |
| ANA    | F    | JARDINS  | SAO PAULO      |
| CLARA  | F    | CENTRO   | BELO HORIZONTE |
| JORGE  | M    | CENTRO   | VITORIA        |
| CELIA  | F    | FLAMENGO | RIO DE JANEIRO |
+--------+------+----------+----------------+

SELECT NOME, SEXO, BAIRRO, CIDADE /*PROJECAO*/
FROM CLIENTE /*ORIGEM*/
	INNER JOIN ENDERECO /*JUNCAO*/
	ON IDCLIENTE = ID_CLIENTE
WHERE SEXO = 'F'; /*SELECAO*/
+-------+------+----------+----------------+
| NOME  | SEXO | BAIRRO   | CIDADE         |
+-------+------+----------+----------------+
| ANA   | F    | JARDINS  | SAO PAULO      |
| CLARA | F    | CENTRO   | BELO HORIZONTE |
| CELIA | F    | FLAMENGO | RIO DE JANEIRO |
+-------+------+----------+----------------+

SELECT NOME, SEXO, EMAIL, TIPO, NUMERO
FROM CLIENTE
	INNER JOIN TELEFONE
	ON IDCLIENTE = ID_CLIENTE;

+--------+------+---------------+------+----------+
| NOME   | SEXO | EMAIL         | TIPO | NUMERO   |
+--------+------+---------------+------+----------+
| JORGE  | M    | JORGE@IG.COM  | CEL  | 78458743 |
| JORGE  | M    | JORGE@IG.COM  | RES  | 56576876 |
| JOAO   | M    | JOAO@IG.COM   | COM  | 87866896 |
| CARLOS | M    | CARLOS@IG.COM | RES  | 54768899 |
| JOAO   | M    | JOAO@IG.COM   | CEL  | 99667587 |
| ANA    | F    | ANA@IG.COM    | CEL  | 78989765 |
| ANA    | F    | ANA@IG.COM    | CEL  | 99766676 |
| JOAO   | M    | JOAO@IG.COM   | COM  | 66687899 |
| JORGE  | M    | JORGE@IG.COM  | RES  | 89986668 |
| CARLOS | M    | CARLOS@IG.COM | CEL  | 88687909 |
+--------+------+---------------+------+----------+

SELECT C.NOME, C.SEXO, E.BAIRRO, E.CIDADE,T.TIPO, T.NUMERO
FROM CLIENTE C
	INNER JOIN ENDERECO E 
	ON C.IDCLIENTE = E.ID_CLIENTE
	INNER JOIN TELEFONE T 
	ON C.IDCLIENTE = T.ID_CLIENTE;
+--------+------+---------+----------------+------+----------+
| NOME   | SEXO | BAIRRO  | CIDADE         | TIPO | NUMERO   |
+--------+------+---------+----------------+------+----------+
| JOAO   | M    | CENTRO  | RIO DE JANEIRO | COM  | 87866896 |
| JOAO   | M    | CENTRO  | RIO DE JANEIRO | CEL  | 99667587 |
| JOAO   | M    | CENTRO  | RIO DE JANEIRO | COM  | 66687899 |
| CARLOS | M    | ESTACIO | RIO DE JANEIRO | RES  | 54768899 |
| CARLOS | M    | ESTACIO | RIO DE JANEIRO | CEL  | 88687909 |
| ANA    | F    | JARDINS | SAO PAULO      | CEL  | 78989765 |
| ANA    | F    | JARDINS | SAO PAULO      | CEL  | 99766676 |
| JORGE  | M    | CENTRO  | VITORIA        | CEL  | 78458743 |
| JORGE  | M    | CENTRO  | VITORIA        | RES  | 56576876 |
| JORGE  | M    | CENTRO  | VITORIA        | RES  | 89986668 |
+--------+------+---------+----------------+------+----------+

/*COMANDO DE DML - MANIPULAÇÃO DE DADOS*/
/*
DML -> DATA MANIPULATION LANGUAGE
DDL -> DATA DEFINITION LANGUAGE
DCL -> DATA CONTROL LANGUAGE
TCL -> TRANSACTION CONTROL LANGUAGE

*/

/*
DML: INSERT, SELECT, WHERE, UPDATE, DELETE
*/
INSERT INTO CLIENTE VALUES(NULL, 'PAULA','M',NULL,'77437493');
INSERT INTO ENDERECO VALUES(NULL, 'RUA JOAQUIM SILVA',
'ALVORADA', 'NITEROI','RJ',7);

SELECT * FROM CLIENTE;
+-----------+--------+------+-------------+---------------+
| IDCLIENTE | NOME   | SEXO | CPF         | EMAIL         |
+-----------+--------+------+-------------+---------------+
|         1 | JOAO   | M    | 76567587887 | JOAO@IG.COM   |
|         2 | CARLOS | M    | 5464553466  | CARLOS@IG.COM |
|         3 | ANA    | F    | 456545678   | ANA@IG.COM    |
|         4 | CLARA  | F    | 5687766856  | NULL          |
|         5 | JORGE  | M    | 8756547688  | JORGE@IG.COM  |
|         6 | CELIA  | F    | 5767876889  | CELIA@IG.COME |
|         7 | PAULA  | M    | NULL        | 77437493      |
+-----------+--------+------+-------------+---------------+


/*FILTROS*/
SELECT * FROM CLIENTE
WHERE SEXO = 'M';
+-----------+--------+------+-------------+---------------+
| IDCLIENTE | NOME   | SEXO | CPF         | EMAIL         |
+-----------+--------+------+-------------+---------------+
|         1 | JOAO   | M    | 76567587887 | JOAO@IG.COM   |
|         2 | CARLOS | M    | 5464553466  | CARLOS@IG.COM |
|         5 | JORGE  | M    | 8756547688  | JORGE@IG.COM  |
|         7 | PAULA  | M    | NULL        | 77437493      |
+-----------+--------+------+-------------+---------------+


/*UPDATE*/

SELECT * FROM CLIENTE
WHERE IDCLIENTE = 7;
+-----------+-------+------+------+----------+
| IDCLIENTE | NOME  | SEXO | CPF  | EMAIL    |
+-----------+-------+------+------+----------+
|         7 | PAULA | M    | NULL | 77437493 |
+-----------+-------+------+------+----------+


UPDATE CLIENTE 
SET SEXO = 'F'
WHERE IDCLIENTE = 7;

SELECT * FROM CLIENTE;
+-----------+--------+------+-------------+---------------+
| IDCLIENTE | NOME   | SEXO | CPF         | EMAIL         |
+-----------+--------+------+-------------+---------------+
|         1 | JOAO   | M    | 76567587887 | JOAO@IG.COM   |
|         2 | CARLOS | M    | 5464553466  | CARLOS@IG.COM |
|         3 | ANA    | F    | 456545678   | ANA@IG.COM    |
|         4 | CLARA  | F    | 5687766856  | NULL          |
|         5 | JORGE  | M    | 8756547688  | JORGE@IG.COM  |
|         6 | CELIA  | F    | 5767876889  | CELIA@IG.COME |
|         7 | PAULA  | F    | NULL        | 77437493      |
+-----------+--------+------+-------------+---------------+




/*DELETE*/
INSERT INTO CLIENTE VALUES(NULL, 'XXX','M','NULL','XXX');
SELECT * FROM CLIENTE;
+-----------+--------+------+-------------+---------------+
| IDCLIENTE | NOME   | SEXO | CPF         | EMAIL         |
+-----------+--------+------+-------------+---------------+
|         1 | JOAO   | M    | 76567587887 | JOAO@IG.COM   |
|         2 | CARLOS | M    | 5464553466  | CARLOS@IG.COM |
|         3 | ANA    | F    | 456545678   | ANA@IG.COM    |
|         4 | CLARA  | F    | 5687766856  | NULL          |
|         5 | JORGE  | M    | 8756547688  | JORGE@IG.COM  |
|         6 | CELIA  | F    | 5767876889  | CELIA@IG.COME |
|         7 | PAULA  | F    | NULL        | 77437493      |
|         8 | XXX    | M    | NULL        | XXX           |
+-----------+--------+------+-------------+---------------+

SELECT * FROM CLIENTE
WHERE IDCLIENTE = 8;
+-----------+------+------+------+-------+
| IDCLIENTE | NOME | SEXO | CPF  | EMAIL |
+-----------+------+------+------+-------+
|         8 | XXX  | M    | NULL | XXX   |
+-----------+------+------+------+-------+

DELETE FROM CLIENTE
WHERE IDCLIENTE = 8;

SELECT * FROM CLIENTE;
+-----------+--------+------+-------------+---------------+
| IDCLIENTE | NOME   | SEXO | CPF         | EMAIL         |
+-----------+--------+------+-------------+---------------+
|         1 | JOAO   | M    | 76567587887 | JOAO@IG.COM   |
|         2 | CARLOS | M    | 5464553466  | CARLOS@IG.COM |
|         3 | ANA    | F    | 456545678   | ANA@IG.COM    |
|         4 | CLARA  | F    | 5687766856  | NULL          |
|         5 | JORGE  | M    | 8756547688  | JORGE@IG.COM  |
|         6 | CELIA  | F    | 5767876889  | CELIA@IG.COME |
|         7 | PAULA  | F    | NULL        | 77437493      |
+-----------+--------+------+-------------+---------------+

/*DDL - MODIFICANDO TABELAS*/
/*DDL -> DADA DEFINITION LANGUAGE
CREATE TABLE, ALTER TABLE, MODIFY, ADD, DROP COLUMN
*/

CREATE TABLE PRODUTO(
IDPRODUTO INT PRIMARY KEY AUTO_INCREMENT,
NOME_PRODUTO VARCHAR(30) NOT NULL,
PRECO INT,
FRETE FLOAT(10,2) NOT NULL
);

DESC PRODUTO;
+--------------+-------------+------+-----+---------+----------------+
| Field        | Type        | Null | Key | Default | Extra          |
+--------------+-------------+------+-----+---------+----------------+
| IDPRODUTO    | int         | NO   | PRI | NULL    | auto_increment |
| NOME_PRODUTO | varchar(30) | NO   |     | NULL    |                |
| PRECO        | int         | YES  |     | NULL    |                |
| FRETE        | float(10,2) | NO   |     | NULL    |                |
+--------------+-------------+------+-----+---------+----------------+

SHOW TABLES;
+--------------------+
| Tables_in_COMERCIO |
+--------------------+
| CLIENTE            |
| ENDERECO           |
| PRODUTO            |
| TELEFONE           |
+--------------------+

/*ALTER TABLE - > ALTERANDO NOME DE UMA COLUNA - CHANGE*/

ALTER TABLE PRODUTO 
CHANGE PRECO VALOR_UNITARIO INT NOT NULL;

DESC PRODUTO;
+----------------+-------------+------+-----+---------+----------------+
| Field          | Type        | Null | Key | Default | Extra          |
+----------------+-------------+------+-----+---------+----------------+
| IDPRODUTO      | int         | NO   | PRI | NULL    | auto_increment |
| NOME_PRODUTO   | varchar(30) | NO   |     | NULL    |                |
| VALOR_UNITARIO | int         | NO   |     | NULL    |                |
| FRETE          | float(10,2) | NO   |     | NULL    |                |
+----------------+-------------+------+-----+---------+----------------+


ALTER TABLE PRODUTO 
CHANGE VALOR_UNITARIO VALOR_UNITARIO INT;
+----------------+-------------+------+-----+---------+----------------+
| Field          | Type        | Null | Key | Default | Extra          |
+----------------+-------------+------+-----+---------+----------------+
| IDPRODUTO      | int         | NO   | PRI | NULL    | auto_increment |
| NOME_PRODUTO   | varchar(30) | NO   |     | NULL    |                |
| VALOR_UNITARIO | int         | YES  |     | NULL    |                |
| FRETE          | float(10,2) | NO   |     | NULL    |                |
+----------------+-------------+------+-----+---------+----------------+

/*MODIFY - ALTERANDO O TIPO */

ALTER TABLE PRODUTO 
MODIFY VALOR_UNITARIO VARCHAR(50) NOT NULL;

DESC PRODUTO;
+----------------+-------------+------+-----+---------+----------------+
| Field          | Type        | Null | Key | Default | Extra          |
+----------------+-------------+------+-----+---------+----------------+
| IDPRODUTO      | int         | NO   | PRI | NULL    | auto_increment |
| NOME_PRODUTO   | varchar(30) | NO   |     | NULL    |                |
| VALOR_UNITARIO | varchar(50) | NO   |     | NULL    |                |
| FRETE          | float(10,2) | NO   |     | NULL    |                |
+----------------+-------------+------+-----+---------+----------------+

/*ADICIONANDO COLUNA - ADD */ 

ALTER TABLE PRODUTO
ADD PESO FLOAT (10,2) NOT NULL ; 
DESC PRODUTO;
+----------------+-------------+------+-----+---------+----------------+
| Field          | Type        | Null | Key | Default | Extra          |
+----------------+-------------+------+-----+---------+----------------+
| IDPRODUTO      | int         | NO   | PRI | NULL    | auto_increment |
| NOME_PRODUTO   | varchar(30) | NO   |     | NULL    |                |
| VALOR_UNITARIO | varchar(50) | NO   |     | NULL    |                |
| FRETE          | float(10,2) | NO   |     | NULL    |                |
| PESO           | float(10,2) | NO   |     | NULL    |                |
+----------------+-------------+------+-----+---------+----------------+

/* APAGANDO UMA COLUNA */

ALTER TABLE PRODUTO 
DROP COLUMN PESO;

DESC PRODUTO;
+----------------+-------------+------+-----+---------+----------------+
| Field          | Type        | Null | Key | Default | Extra          |
+----------------+-------------+------+-----+---------+----------------+
| IDPRODUTO      | int         | NO   | PRI | NULL    | auto_increment |
| NOME_PRODUTO   | varchar(30) | NO   |     | NULL    |                |
| VALOR_UNITARIO | varchar(50) | NO   |     | NULL    |                |
| FRETE          | float(10,2) | NO   |     | NULL    |                |
+----------------+-------------+------+-----+---------+----------------+

/* ADICIONANDO UMA COLUNA NA ORDEM ESPECIFICA*/
/* AFTER -> DEPOIS 
FIRST -> ANTES */

ALTER TABLE PRODUTO 
ADD COLUMN PESO FLOAT(10,2) NOT Null
AFTER NOME_PRODUTO;

DESC PRODUTO;
+----------------+-------------+------+-----+---------+----------------+
| Field          | Type        | Null | Key | Default | Extra          |
+----------------+-------------+------+-----+---------+----------------+
| IDPRODUTO      | int         | NO   | PRI | NULL    | auto_increment |
| NOME_PRODUTO   | varchar(30) | NO   |     | NULL    |                |
| PESO           | float(10,2) | NO   |     | NULL    |                |
| VALOR_UNITARIO | varchar(50) | NO   |     | NULL    |                |
| FRETE          | float(10,2) | NO   |     | NULL    |                |
+----------------+-------------+------+-----+---------+----------------+

ALTER TABLE PRODUTO 
ADD COLUMN PESO FLOAT(10,2) NOT Null
FIRST;
+----------------+-------------+------+-----+---------+----------------+
| Field          | Type        | Null | Key | Default | Extra          |
+----------------+-------------+------+-----+---------+----------------+
| PESO           | float(10,2) | NO   |     | NULL    |                |
| IDPRODUTO      | int         | NO   | PRI | NULL    | auto_increment |
| NOME_PRODUTO   | varchar(30) | NO   |     | NULL    |                |
| VALOR_UNITARIO | varchar(50) | NO   |     | NULL    |                |
| FRETE          | float(10,2) | NO   |     | NULL    |                |
+----------------+-------------+------+-----+---------+----------------+

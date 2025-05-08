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

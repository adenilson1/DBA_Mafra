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

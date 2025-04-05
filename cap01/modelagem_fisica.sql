/*1) ARQUITETURA DE SOFTWARE
PADRAO -> MVC


CONTROLLER - MODEL - VIEW

PAPEL DO BANCO DE DADO É GERENCIAR OS DADOS

VIEW - REQUISIÇÃO: HTML, CSS JAVASCRIPT
CONTROLLER - REGRA DE NEGOCIO: PHP, JAVA, C#
MODEL - CLASSES MODELOS - TABELAS DE BANCO DE DADOS*/


/*2) MODELAGEM LOGICA E */

CLIENTE

NOME -  CARACTERES(30)
CPF - NUMERICO (11)
EMAIL - CARACTER (30)
TELEFONE - CARACTER (30)
ENDERECO - CARACTER (100)
SEXO - CARACTER (1)

ENTIDADE = A TABELA
CAMPOS = ATRIBUTOS

/*PROCESSOS DE MODELAGEM*/

/* FASE 01 E FAZE 02 - AD ADM DE DADOS*/

MODELAGEM CONCEITUAL - RASCUNHO
MODELAGEM LOGICA - QUALQUER PROGRAMA DE MODELAGEM

/* FASE 03 - DBA / AD*/

MODELAGEM FÍSICA - SCRIPT DE BANCO


/*INICIANDO A MODELAGEM FISICA*/


SHOW DATABASES;

#CRIANDO UM BANCO DE DADOS

CREATE DATABASE PROJETO

#CONECTADO AO BANCO DE DADOS

USE PROJETO;

# ';' ->  SE CHAMA DELIMITADOR

# CRIANDO A TABELA DE CLIENTE

CREATE TABLE CLEINTE(
	NOME VARCHAR(30),
	SEXO CHAR(1),
	EMAIL VARCHAR(30),
	CPF INT(11),
	TELEFONE VARCHAR(30),
	ENDERECO VARCHAR(100)

);

#VENDO A TABELA
SHOW TABLES;
+-------------------+
| Tables_in_PROJETO |
+-------------------+
| CLEINTE           |
+-------------------+

#DESCREVENDO A ESTRUTURA DA TABELA;
DESC CLEINTE;

+----------+--------------+------+-----+---------+-------+
| Field    | Type         | Null | Key | Default | Extra |
+----------+--------------+------+-----+---------+-------+
| NOME     | varchar(30)  | YES  |     | NULL    |       |
| SEXO     | char(1)      | YES  |     | NULL    |       |
| EMAIL    | varchar(30)  | YES  |     | NULL    |       |
| CPF      | int          | YES  |     | NULL    |       |
| TELEFONE | varchar(30)  | YES  |     | NULL    |       |
| ENDERECO | varchar(100) | YES  |     | NULL    |       |
+----------+--------------+------+-----+---------+-------+

# MODELAGEM FISICA

#BANCO DE DADOS LIVRARIA01

CREATE DATABASE LIVRARIA01;

SHOW DATABASES;

+--------------------+
| Database           |
+--------------------+
| LIVRARIA           |
| LIVRARIA01         |
| PROJETO            |
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+

#USE 

USE LIVRARIA01;

#CRIANDO A TABELA LIVRO

CREATE TABLE LIVRO(
	IDLIVRO INT PRIMARY KEY AUTO_INCREMENT,
	TITULO_LIVRO VARCHAR(50) NOT NULL,
	NOME_AUTOR VARCHAR(50) NOT NULL,
	SEXO CHAR(1) NOT NULL,
	NUMERO_PAGINAS INT NOT NULL,
	NOME_EDITORA VARCHAR(50) NOT NULL,
	PRECO DECIMAL(5,2) NOT NULL,
	UF CHAR(2) NOT NULL,
	ANO_PUBLICACAO INT NOT NULL
);

SHOW TABLES;

+----------------------+
| Tables_in_LIVRARIA01 |
+----------------------+
| LIVRO                |
+----------------------+

drop TABLE LIVRO;

DESC LIVRO;

+----------------+--------------+------+-----+---------+----------------+
| Field          | Type         | Null | Key | Default | Extra          |
+----------------+--------------+------+-----+---------+----------------+
| IDLIVRO        | int          | NO   | PRI | NULL    | auto_increment |
| TITULO_LIVRO   | varchar(50)  | NO   |     | NULL    |                |
| NOME_AUTOR     | varchar(50)  | NO   |     | NULL    |                |
| SEXO           | char(1)      | NO   |     | NULL    |                |
| NUMERO_PAGINAS | int          | NO   |     | NULL    |                |
| NOME_EDITORA   | varchar(50)  | NO   |     | NULL    |                |
| PRECO          | decimal(5,2) | NO   |     | NULL    |                |
| UF             | char(2)      | NO   |     | NULL    |                |
| ANO_PUBLICACAO | int          | NO   |     | NULL    |                |
+----------------+--------------+------+-----+---------+----------------+


#INSERINDO DADOS NA TABELA

INSERT INTO LIVRO VALUES(null,'Cavaleiro Real','Ana Claudia','F',456,
'Atlas',49.9,'RJ',2009);

INSERT INTO LIVRO VALUES(null,'SQL para leigos','Joao Nunes','M',450,
'Addison',98.00,'SP',2018);

INSERT INTO LIVRO VALUES(null,'Receitas Caseiras','Celia Tavares','F',210,
'Atlas',45.00,'RJ',2008);

INSERT INTO LIVRO VALUES(null,'Pessoas Efetivas','Eduardo Santos','M',390,
'Beta',78.99,'RJ',2018);

INSERT INTO LIVRO VALUES(null,'Habitos Saudaveis','Eduardo Santos','M',630,
'Beta',150.98,'RJ',2019);

INSERT INTO LIVRO VALUES(null,'A Casa Marron','Hermes Macedo','M',250,
'Bubba',60.00,'MG',2016);

INSERT INTO LIVRO VALUES(null,'Estacio Querido','Geraldo Francisco','M',310,
'Insignia',100.00,'ES',2015);

INSERT INTO LIVRO VALUES(null,'Para Sempre Amigas','Leda Silva','F',510,
'Insignia',78.98,'ES',2011);

INSERT INTO LIVRO VALUES(null,'Copas Inesqueciveis','Marco Alcantara','M',200,
'Larson',130.98,'RS',2018);

INSERT INTO LIVRO VALUES(null,'O Poder da Mente','Clara Mafra','F',120,
'Continental',56.58,'RS',2017);

SELECT * FROM LIVRO;


+---------+---------------------+-------------------+------+----------------+--------------+--------+----+----------------+
| IDLIVRO | TITULO_LIVRO        | NOME_AUTOR        | SEXO | NUMERO_PAGINAS | NOME_EDITORA | PRECO  | UF | ANO_PUBLICACAO |
+---------+---------------------+-------------------+------+----------------+--------------+--------+----+----------------+
|       1 | Cavaleiro Real      | Ana Claudia       | F    |            456 | Atlas        |  49.90 | RJ |           2009 |
|       2 | SQL para leigos     | Joao Nunes        | M    |            450 | Addison      |  98.00 | SP |           2018 |
|       3 | Receitas Caseiras   | Celia Tavares     | F    |            210 | Atlas        |  45.00 | RJ |           2008 |
|       4 | Pessoas Efetivas    | Eduardo Santos    | M    |            390 | Beta         |  78.99 | RJ |           2018 |
|       5 | Habitos Saudaveis   | Eduardo Santos    | M    |            630 | Beta         | 150.98 | RJ |           2019 |
|       6 | A Casa Marron       | Hermes Macedo     | M    |            250 | Bubba        |  60.00 | MG |           2016 |
|       7 | Estacio Querido     | Geraldo Francisco | M    |            310 | Insignia     | 100.00 | ES |           2015 |
|       8 | Para Sempre Amigas  | Leda Silva        | F    |            510 | Insignia     |  78.98 | ES |           2011 |
|       9 | Copas Inesqueciveis | Marco Alcantara   | M    |            200 | Larson       | 130.98 | RS |           2018 |
|      10 | O Poder da Mente    | Clara Mafra       | F    |            120 | Continental  |  56.58 | RS |           2017 |
+---------+---------------------+-------------------+------+----------------+--------------+--------+----+----------------+


#QUERYS

# 1) TRAZER TODOS OS DADOS 

SELECT * FROM LIVRO;

+---------+---------------------+-------------------+------+----------------+--------------+--------+----+----------------+
| IDLIVRO | TITULO_LIVRO        | NOME_AUTOR        | SEXO | NUMERO_PAGINAS | NOME_EDITORA | PRECO  | UF | ANO_PUBLICACAO |
+---------+---------------------+-------------------+------+----------------+--------------+--------+----+----------------+
|       1 | Cavaleiro Real      | Ana Claudia       | F    |            456 | Atlas        |  49.90 | RJ |           2009 |
|       2 | SQL para leigos     | Joao Nunes        | M    |            450 | Addison      |  98.00 | SP |           2018 |
|       3 | Receitas Caseiras   | Celia Tavares     | F    |            210 | Atlas        |  45.00 | RJ |           2008 |
|       4 | Pessoas Efetivas    | Eduardo Santos    | M    |            390 | Beta         |  78.99 | RJ |           2018 |
|       5 | Habitos Saudaveis   | Eduardo Santos    | M    |            630 | Beta         | 150.98 | RJ |           2019 |
|       6 | A Casa Marron       | Hermes Macedo     | M    |            250 | Bubba        |  60.00 | MG |           2016 |
|       7 | Estacio Querido     | Geraldo Francisco | M    |            310 | Insignia     | 100.00 | ES |           2015 |
|       8 | Para Sempre Amigas  | Leda Silva        | F    |            510 | Insignia     |  78.98 | ES |           2011 |
|       9 | Copas Inesqueciveis | Marco Alcantara   | M    |            200 | Larson       | 130.98 | RS |           2018 |
|      10 | O Poder da Mente    | Clara Mafra       | F    |            120 | Continental  |  56.58 | RS |           2017 |
+---------+---------------------+-------------------+------+----------------+--------------+--------+----+----------------+


# 2) TRAZER O NOME DO LIVRO E O NOME DA EDITORA

SELECT TITULO_LIVRO AS LIVRO, NOME_EDITORA AS EDITORA FROM LIVRO;

+---------------------+-------------+
| LIVRO               | EDITORA     |
+---------------------+-------------+
| Cavaleiro Real      | Atlas       |
| SQL para leigos     | Addison     |
| Receitas Caseiras   | Atlas       |
| Pessoas Efetivas    | Beta        |
| Habitos Saudaveis   | Beta        |
| A Casa Marron       | Bubba       |
| Estacio Querido     | Insignia    |
| Para Sempre Amigas  | Insignia    |
| Copas Inesqueciveis | Larson      |
| O Poder da Mente    | Continental |
+---------------------+-------------+


# 3) TRAZER NOME DO LIVRO, UF E POR AUTORES DO SEXO MASCULINO

SELECT TITULO_LIVRO AS LIVRO, UF FROM LIVRO 
WHERE SEXO = 'M';

+---------------------+----+
| LIVRO               | UF |
+---------------------+----+
| SQL para leigos     | SP |
| Pessoas Efetivas    | RJ |
| Habitos Saudaveis   | RJ |
| A Casa Marron       | MG |
| Estacio Querido     | ES |
| Copas Inesqueciveis | RS |
+---------------------+----+


# 4) TRAZER NOME DO LIVRO, NUMERO DE PAGINAS POR AUTORES 
# DO SEXO FEMININO

SELECT TITULO_LIVRO AS LIVRO, NUMERO_PAGINAS AS PAGINAS FROM LIVRO 
WHERE SEXO = 'F';

+--------------------+---------+
| LIVRO              | PAGINAS |
+--------------------+---------+
| Cavaleiro Real     |     456 |
| Receitas Caseiras  |     210 |
| Para Sempre Amigas |     510 |
| O Poder da Mente   |     120 |
+--------------------+---------+

# 5) TRAZER OS VALORES E EDITORAS DE SAO PAULO

SELECT PRECO AS VALOR FROM LIVRO 
WHERE UF = 'SP';

+-------+
| VALOR |
+-------+
| 98.00 |
+-------+

# 6) TRAZER NOME AUTORES, MASCULINO, QUE TIVERAM LIVROS 
#PUBLICADOS POR SAO PAULO OU RIO DE JANEIRO

SELECT NOME_AUTOR AS AUTOR, UF FROM LIVRO 
WHERE SEXO = 'M' AND (UF = 'SP' OR UF = 'RJ');

+----------------+----+
| AUTOR          | UF |
+----------------+----+
| Joao Nunes     | SP |
| Eduardo Santos | RJ |
| Eduardo Santos | RJ |
+----------------+----+


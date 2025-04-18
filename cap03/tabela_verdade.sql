/*TABELA VERDADE
A 	B 	| A OR B | A AND B
V 	V 		V 		  V
V 	F	 	V 		  F
F 	V 		V 		  F
F 	F 		F  		  V
*/

#OPERADORES LOGICOS
# OR -> UMA CONDIÇÃO VERDADEIRA
# AND -> DUAS CONDIÇẼOS PARA SER VERDADEIRA

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

USE LIVRARIA01;

SHOW TABLES;

+----------------------+
| Tables_in_LIVRARIA01 |
+----------------------+
| LIVRO                |
+----------------------+

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

# OR -OU

USE PROJETO;

DESC PROJETO;

SHOW TABLES;

+-------------------+
| Tables_in_PROJETO |
+-------------------+
| CLIENTE           |
+-------------------+


DESC CLIENTE;

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


SELECT * FROM CLIENTE;

+--------+------+---------------------+-----------+-----------+------------------------------------------------+
| NOME   | SEXO | EMAIL               | CPF       | TELEFONE  | ENDERECO                                       |
+--------+------+---------------------+-----------+-----------+------------------------------------------------+
| JOAO   | M    | JOAO@)GMAIL.COM     | 988638273 | 22923110  | MAIA LACERDA - ESTACIO - RIO DE JANEIRO - RJ   |
| CELIA  | F    | CELIA@)GMAIL.COM    | 541521456 | 25078869  | RIACHUELO - CENTRO - RIO DE JANEIRO - RJ       |
| JORGE  | M    | NULL                | 885755896 | 58748895  | OSCAR CURY - BOM RETIRO - PATOS DE MINAS - MG  |
| ANA    | F    | ANA@GLOBO.COM       |  85548962 | 548556985 | PRES. ANTONIO CARLOS - CENTRO - SAO PAULO - SP |
| CARLA  | F    | CARLA@TERATI.COM.BR |   7745828 | 66587458  | SAMUEL SILVA - CENTRO - BELO HORIZONTE - MG    |
| LILIAN | F    | NULL                | 887777485 | 947785696 | SENADOR SOARES - TIJUCA - RIO DE JANEIRO - RJ  |
+--------+------+---------------------+-----------+-----------+------------------------------------------------+

#OR - OU

SELECT NOME, SEXO, ENDERECO FROM CLIENTE
WHERE SEXO = 'M' OR ENDERECO LIKE '%RJ';

+--------+------+-----------------------------------------------+
| NOME   | SEXO | ENDERECO                                      |
+--------+------+-----------------------------------------------+
| JOAO   | M    | MAIA LACERDA - ESTACIO - RIO DE JANEIRO - RJ  |
| CELIA  | F    | RIACHUELO - CENTRO - RIO DE JANEIRO - RJ      |
| JORGE  | M    | OSCAR CURY - BOM RETIRO - PATOS DE MINAS - MG |
| LILIAN | F    | SENADOR SOARES - TIJUCA - RIO DE JANEIRO - RJ |
+--------+------+-----------------------------------------------+

SELECT NOME, SEXO, ENDERECO FROM CLIENTE
WHERE SEXO = 'F' OR ENDERECO LIKE '%ESTACIO';

+--------+------+------------------------------------------------+
| NOME   | SEXO | ENDERECO                                       |
+--------+------+------------------------------------------------+
| CELIA  | F    | RIACHUELO - CENTRO - RIO DE JANEIRO - RJ       |
| ANA    | F    | PRES. ANTONIO CARLOS - CENTRO - SAO PAULO - SP |
| CARLA  | F    | SAMUEL SILVA - CENTRO - BELO HORIZONTE - MG    |
| LILIAN | F    | SENADOR SOARES - TIJUCA - RIO DE JANEIRO - RJ  |
+--------+------+------------------------------------------------+

#AND - E

SELECT NOME , SEXO, ENDERECO FROM CLIENTE
WHERE SEXO = 'M' AND ENDERECO LIKE '%RJ';

+------+------+----------------------------------------------+
| NOME | SEXO | ENDERECO                                     |
+------+------+----------------------------------------------+
| JOAO | M    | MAIA LACERDA - ESTACIO - RIO DE JANEIRO - RJ |
+------+------+----------------------------------------------+

SELECT NOME, SEXO, ENDERECO FROM CLIENTE
WHERE SEXO = 'F' AND ENDERECO LIKE '%ESTACIO';

Empty set (0.00 sec)


/*FUNÇÃO DE AGREGAÇÃO*/
#SUMERAZINDO DADOS

/*COUNT(*), GROUP BY, PERFORMANCE COM OPERADORES LOGICOS*/

SHOW DATABASES;

USE PROJETO;

SHOW TABLES;
+-------------------+
| Tables_in_PROJETO |
+-------------------+
| CLIENTE           |
+-------------------+

DESC CLIENTE;

SELECT * FROM CLIENTE;
+--------+------+---------------------+-----------+-----------+------------------------------------------------+
| NOME   | SEXO | EMAIL               | CPF       | TELEFONE  | ENDERECO                                       |
+--------+------+---------------------+-----------+-----------+------------------------------------------------+
| JOAO   | M    | JOAO@)GMAIL.COM     | 988638273 | 22923110  | MAIA LACERDA - ESTACIO - RIO DE JANEIRO - RJ   |
| CELIA  | F    | CELIA@)GMAIL.COM    | 541521456 | 25078869  | RIACHUELO - CENTRO - RIO DE JANEIRO - RJ       |
| JORGE  | M    | NULL                | 885755896 | 58748895  | OSCAR CURY - BOM RETIRO - PATOS DE MINAS - MG  |
| ANA    | F    | ANA@GLOBO.COM       |  85548962 | 548556985 | PRES. ANTONIO CARLOS - CENTRO - SAO PAULO - SP |
| CARLA  | F    | CARLA@TERATI.COM.BR |   7745828 | 66587458  | SAMUEL SILVA - CENTRO - BELO HORIZONTE - MG    |
| LILIAN | F    | NULL                | 887777485 | 947785696 | SENADOR SOARES - TIJUCA - RIO DE JANEIRO - RJ  |
+--------+------+---------------------+-----------+-----------+------------------------------------------------+

#CONTANDO REGISTROS DE UMA TABELA - COUNT(*)

SELECT COUNT(*) FROM CLIENTE;

+----------+
| COUNT(*) |
+----------+
|        6 |
+----------+

SELECT COUNT(*) AS "QUANTIDADE DE REGISTRO DA TABELA CLIENTE"
FROM CLIENTE;
+------------------------------------------+
| QUANTIDADE DE REGISTRO DA TABELA CLIENTE |
+------------------------------------------+
|                                        6 |
+------------------------------------------+


#OPERANDO GROUP BY


SELECT SEXO, COUNT(*) FROM CLIENTE
GROUP BY SEXO;
+------+----------+
| SEXO | COUNT(*) |
+------+----------+
| M    |        2 |
| F    |        4 |
+------+----------+

SELECT SEXO, COUNT(*) AS 'QUANTIDADE'
FROM CLIENTE
GROUP BY SEXO;

+------+------------+
| SEXO | QUANTIDADE |
+------+------------+
| M    |          2 |
| F    |          4 |
+------+------------+

#PERFORMACE COM OPERADORES LOGICOS

#PARA CONTAR
SELECT COUNT(*) FROM CLIENTE;
+----------+
| COUNT(*) |
+----------+
|        6 |
+----------+

SELECT SEXO, COUNT(*) FROM CLIENTE
GROUP BY SEXO;
+------+----------+
| SEXO | COUNT(*) |
+------+----------+
| M    |        2 |
| F    |        4 |
+------+----------+

SELECT ENDERECO, SEXO, COUNT(*) AS "QUANTIDADE"
FROM CLIENTE
WHERE ENDERECO LIKE '%RIO DE JANEIRO%' AND SEXO = 'F';
GROUP BY SEXO;

+------+------------+
| SEXO | QUANTIDADE |
+------+------------+
| F    |          2 |
+------+------------+

SELECT ENDERECO, SEXO FROM CLIENTE;

SELECT NOME, SEXO, ENDERECO
FROM CLIENTE
WHERE SEXO = 'F' OR ENDERECO LIKE "%RIO DE JANEIRO%";
+--------+------+------------------------------------------------+
| NOME   | SEXO | ENDERECO                                       |
+--------+------+------------------------------------------------+
| JOAO   | M    | MAIA LACERDA - ESTACIO - RIO DE JANEIRO - RJ   |
| CELIA  | F    | RIACHUELO - CENTRO - RIO DE JANEIRO - RJ       |
| ANA    | F    | PRES. ANTONIO CARLOS - CENTRO - SAO PAULO - SP |
| CARLA  | F    | SAMUEL SILVA - CENTRO - BELO HORIZONTE - MG    |
| LILIAN | F    | SENADOR SOARES - TIJUCA - RIO DE JANEIRO - RJ  |
+--------+------+------------------------------------------------+

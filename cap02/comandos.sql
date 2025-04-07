/*COMANDOS*/
# TIPOS NULOS E INTEIROS

SHOW DATABASES;

+--------------------+
| Database           |
+--------------------+
| LIVRARIA           |
| PROJETO            |
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+


USE PROJETO;

# NOTA: TUPLA E REGISTRO =  LINHA

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

/*INSERINDO DADOS EM UMA TABELA*/

# PRIMEIRA FORMA

INSERT INTO CLIENTE VALUES('JOAO','M','JOAO@)GMAIL.COM',988638273,
	'22923110','MAIA LACERDA - ESTACIO - RIO DE JANEIRO - RJ');

INSERT INTO CLIENTE VALUES('CELIA','F','CELIA@)GMAIL.COM',541521456,
	'25078869','RIACHUELO - CENTRO - RIO DE JANEIRO - RJ');

INSERT INTO CLIENTE VALUES('JORGE','M',NULL,885755896,
	'58748895','OSCAR CURY - BOM RETIRO - PATOS DE MINAS - MG');


# SEGUNDA FORMA

INSERT INTO CLIENTE (NOME,SEXO,EMAIL,ENDERECO,TELEFONE,CPF) VALUES(
	'LILIAN','F',NULL,'SENADOR SOARES - TIJUCA - RIO DE JANEIRO - RJ',
	'947785696',887777485
);

# TERCEIRA FORMA

INSERT INTO CLIENTE VALUES('ANA', 'F', 'ANA@GLOBO.COM',85548962,'548556985',
		'PRES. ANTONIO CARLOS - CENTRO - SAO PAULO - SP'),
		('CARLA', 'F', 'CARLA@TERATI.COM.BR',7745828,'66587458','SAMUEL SILVA - CENTRO - BELO HORIZONTE - MG');

#OUTRO

INSERT INTO CLIENTE (NOME,SEXO,ENDERECO,TELEFONE,CPF) VALUES(
	'CLARA','F','SENADOR SOARES - TIJUCA - RIO DE JANEIRO - RJ',
	'883665843',22222222222);
ERROR 1264 (22003): Out of range value for column 'CPF' at row 1


/*PROJEÇÕES - SELECT*/

# COMANDO SELECT 
/* SELEÇÃO PROJEÇÃO E JUNÇÃO 

O SELECT É A PROJEÇÃO
*/

SELECT NOW();

+---------------------+
| NOW()               |
+---------------------+
| 2025-04-07 13:39:47 |
+---------------------+

SELECT NOW() AS DATA_HORA;
+---------------------+
| DATA_HORA           |
+---------------------+
| 2025-04-07 13:46:58 |
+---------------------+

SELECT NOW() AS DATA_HORA, 'ADENILSON' AS ESTUDANTE;
+---------------------+-----------+
| DATA_HORA           | ESTUDANTE |
+---------------------+-----------+
| 2025-04-07 13:47:39 | ADENILSON |
+---------------------+-----------+


SELECT 'ADENILSON';

+-----------+
| ADENILSON |
+-----------+
| ADENILSON |
+-----------+

SELECT 'BANCO DE DADOS';

+----------------+
| BANCO DE DADOS |
+----------------+
| BANCO DE DADOS |
+----------------+

#ALIAS DE COLUNAS - APELIDOS

SELECT NOME, SEXO, EMAIL FROM CLIENTE;

+--------+------+---------------------+
| NOME   | SEXO | EMAIL               |
+--------+------+---------------------+
| JOAO   | M    | JOAO@)GMAIL.COM     |
| CELIA  | F    | CELIA@)GMAIL.COM    |
| JORGE  | M    | NULL                |
| ANA    | F    | ANA@GLOBO.COM       |
| CARLA  | F    | CARLA@TERATI.COM.BR |
| LILIAN | F    | NULL                |
+--------+------+---------------------+

SELECT NOME AS CLIENTE, SEXO, EMAIL FROM CLIENTE;
+---------+------+---------------------+
| CLIENTE | SEXO | EMAIL               |
+---------+------+---------------------+
| JOAO    | M    | JOAO@)GMAIL.COM     |
| CELIA   | F    | CELIA@)GMAIL.COM    |
| JORGE   | M    | NULL                |
| ANA     | F    | ANA@GLOBO.COM       |
| CARLA   | F    | CARLA@TERATI.COM.BR |
| LILIAN  | F    | NULL                |
+---------+------+---------------------+


SELECT NOME, SEXO, EMAIL, ENDERECO FROM CLIENTE;

+--------+------+---------------------+------------------------------------------------+
| NOME   | SEXO | EMAIL               | ENDERECO                                       |
+--------+------+---------------------+------------------------------------------------+
| JOAO   | M    | JOAO@)GMAIL.COM     | MAIA LACERDA - ESTACIO - RIO DE JANEIRO - RJ   |
| CELIA  | F    | CELIA@)GMAIL.COM    | RIACHUELO - CENTRO - RIO DE JANEIRO - RJ       |
| JORGE  | M    | NULL                | OSCAR CURY - BOM RETIRO - PATOS DE MINAS - MG  |
| ANA    | F    | ANA@GLOBO.COM       | PRES. ANTONIO CARLOS - CENTRO - SAO PAULO - SP |
| CARLA  | F    | CARLA@TERATI.COM.BR | SAMUEL SILVA - CENTRO - BELO HORIZONTE - MG    |
| LILIAN | F    | NULL                | SENADOR SOARES - TIJUCA - RIO DE JANEIRO - RJ  |
+--------+------+---------------------+------------------------------------------------+

SELECT EMAIL, SEXO, ENDERECO, NOME FROM CLIENTE;

+---------------------+------+------------------------------------------------+--------+
| EMAIL               | SEXO | ENDERECO                                       | NOME   |
+---------------------+------+------------------------------------------------+--------+
| JOAO@)GMAIL.COM     | M    | MAIA LACERDA - ESTACIO - RIO DE JANEIRO - RJ   | JOAO   |
| CELIA@)GMAIL.COM    | F    | RIACHUELO - CENTRO - RIO DE JANEIRO - RJ       | CELIA  |
| NULL                | M    | OSCAR CURY - BOM RETIRO - PATOS DE MINAS - MG  | JORGE  |
| ANA@GLOBO.COM       | F    | PRES. ANTONIO CARLOS - CENTRO - SAO PAULO - SP | ANA    |
| CARLA@TERATI.COM.BR | F    | SAMUEL SILVA - CENTRO - BELO HORIZONTE - MG    | CARLA  |
| NULL                | F    | SENADOR SOARES - TIJUCA - RIO DE JANEIRO - RJ  | LILIAN |
+---------------------+------+------------------------------------------------+--------+

# PARA FINS ACADEMICO

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

SELECT EMAIL, SEXO, ENDERECO, NOME, NOW() AS DATA_HORA FROM CLIENTE;

+---------------------+------+------------------------------------------------+--------+---------------------+
| EMAIL               | SEXO | ENDERECO                                       | NOME   | DATA_HORA           |
+---------------------+------+------------------------------------------------+--------+---------------------+
| JOAO@)GMAIL.COM     | M    | MAIA LACERDA - ESTACIO - RIO DE JANEIRO - RJ   | JOAO   | 2025-04-07 14:04:58 |
| CELIA@)GMAIL.COM    | F    | RIACHUELO - CENTRO - RIO DE JANEIRO - RJ       | CELIA  | 2025-04-07 14:04:58 |
| NULL                | M    | OSCAR CURY - BOM RETIRO - PATOS DE MINAS - MG  | JORGE  | 2025-04-07 14:04:58 |
| ANA@GLOBO.COM       | F    | PRES. ANTONIO CARLOS - CENTRO - SAO PAULO - SP | ANA    | 2025-04-07 14:04:58 |
| CARLA@TERATI.COM.BR | F    | SAMUEL SILVA - CENTRO - BELO HORIZONTE - MG    | CARLA  | 2025-04-07 14:04:58 |
| NULL                | F    | SENADOR SOARES - TIJUCA - RIO DE JANEIRO - RJ  | LILIAN | 2025-04-07 14:04:58 |
+---------------------+------+------------------------------------------------+--------+---------------------+

/*SELEÇÃO - USAR O WHERE*/

# FILTROS -> EM TERMO DE LINHA
# OS TIPOS DE FILTROS: WHERE E LIKE

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

SELECT NOME, SEXO FROM CLIENTE
WHERE SEXO = 'M';

+-------+------+
| NOME  | SEXO |
+-------+------+
| JOAO  | M    |
| JORGE | M    |
+-------+------+

SELECT NOME, ENDERECO FROM CLIENTE
WHERE SEXO = 'F';

+--------+------------------------------------------------+
| NOME   | ENDERECO                                       |
+--------+------------------------------------------------+
| CELIA  | RIACHUELO - CENTRO - RIO DE JANEIRO - RJ       |
| ANA    | PRES. ANTONIO CARLOS - CENTRO - SAO PAULO - SP |
| CARLA  | SAMUEL SILVA - CENTRO - BELO HORIZONTE - MG    |
| LILIAN | SENADOR SOARES - TIJUCA - RIO DE JANEIRO - RJ  |
+--------+------------------------------------------------+

SELECT NOME, SEXO FROM CLIENTE
WHERE ENDERECO = 'RJ';

Empty set (0.00 sec) -> VAZIO

#USO DO LIKE(COMO) -> PESQUISA DENTRO DE UM CAMPO, COM USO DO CARACTER CORINGA '%'
# USO: COMEÇA-> '%X', TERMINA -> 'X%', NO MEIO '%X%'
# '%' -> SIGNIFICA QUALQUER COISA

SELECT NOME, SEXO FROM CLIENTE
WHERE ENDERECO LIKE '%RJ';

+--------+------+
| NOME   | SEXO |
+--------+------+
| JOAO   | M    |
| CELIA  | F    |
| LILIAN | F    |
+--------+------+

SELECT NOME, SEXO, ENDERECO FROM CLIENTE
WHERE ENDERECO LIKE '%RJ';

+--------+------+-----------------------------------------------+
| NOME   | SEXO | ENDERECO                                      |
+--------+------+-----------------------------------------------+
| JOAO   | M    | MAIA LACERDA - ESTACIO - RIO DE JANEIRO - RJ  |
| CELIA  | F    | RIACHUELO - CENTRO - RIO DE JANEIRO - RJ      |
| LILIAN | F    | SENADOR SOARES - TIJUCA - RIO DE JANEIRO - RJ |
+--------+------+-----------------------------------------------+

SELECT NOME, SEXO, ENDERECO FROM CLIENTE
WHERE ENDERECO LIKE 'OSCAR CURY%';

+-------+------+-----------------------------------------------+
| NOME  | SEXO | ENDERECO                                      |
+-------+------+-----------------------------------------------+
| JORGE | M    | OSCAR CURY - BOM RETIRO - PATOS DE MINAS - MG |
+-------+------+-----------------------------------------------+


SELECT NOME, SEXO, ENDERECO FROM CLIENTE
WHERE ENDERECO LIKE '%CENTRO%';

+-------+------+------------------------------------------------+
| NOME  | SEXO | ENDERECO                                       |
+-------+------+------------------------------------------------+
| CELIA | F    | RIACHUELO - CENTRO - RIO DE JANEIRO - RJ       |
| ANA   | F    | PRES. ANTONIO CARLOS - CENTRO - SAO PAULO - SP |
| CARLA | F    | SAMUEL SILVA - CENTRO - BELO HORIZONTE - MG    |
+-------+------+------------------------------------------------+


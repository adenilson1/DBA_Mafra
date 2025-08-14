/*PROGRAMAÇÃO EM BANCO DE DADOS*/

SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| COMERCIO           |
| PROJETO            |
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+

USE COMERCIO;

SHOW TABLES;
+--------------------+
| Tables_in_COMERCIO |
+--------------------+
| ALUNOS             |
| CLIENTE            |
| ENDERECO           |
| JOGADORES          |
| PRODUTO            |
| TELEFONE           |
| V_JOGADORES        |
| V_RELATORIO        |
+--------------------+

/*STORE PROCEDURE: PROCEDIMENTOS(BLOCOS) ARMAZENADOS*/
SELECT 'MAFRA'; /*BLOCO ANONIMO*/

/*BLOCO NOMEADO*/
/*MUDANDO O DELIMITER*/

DELIMITER $

STATUS
--------------
mysql  Ver 9.2.0 for Linux on x86_64 (MySQL Community Server - GPL)

Connection id:		9
Current database:	COMERCIO
Current user:		root@localhost
SSL:			Not in use
Current pager:		stdout
Using outfile:		''
Using delimiter:	$
Server version:		9.2.0 MySQL Community Server - GPL
Protocol version:	10
Connection:		Localhost via UNIX socket
Server characterset:	utf8mb4
Db     characterset:	utf8mb4
Client characterset:	latin1
Conn.  characterset:	latin1
UNIX socket:		/var/run/mysqld/mysqld.sock
Binary data as:		Hexadecimal
Uptime:			4 hours 4 min 15 sec

Threads: 2  Questions: 22  Slow queries: 0  Opens: 149  Flush tables: 3  Open tables: 68  Queries per second avg: 0.001
--------------

/*ESTRUTURA DA PROCEDURE SEM PARAMTROS*/

CREATE PROCEDURE NOME()
BEGIN 
	QUALQUER COISA;
END 
$

/*MOSTRANDO NOME DE UMA EMPRESA*/
CREATE PROCEDURE NOME_EMPRESA()
BEGIN 
	SELECT 'UNIVERISADADE DOS DADOS' AS EMPRESA;
END 
$

/*CHAMNDO A PROCEDURE*/

DELIMITER ;

CALL NOME_EMPRESA();
+-------------------------+
| EMPRESA                 |
+-------------------------+
| UNIVERISADADE DOS DADOS |
+-------------------------+

/*PROCEDURE COM PARAMETROS*/

SELECT 10 + 10 AS CONTA;
+-------+
| CONTA |
+-------+
|    20 |
+-------+


DELIMITER $ 

CREATE PROCEDURE CONTA()
BEGIN 
	SELECT 10 + 10 AS CONTA;
END 
$

DELIMITER ;

CALL CONTA();
+-------+
| CONTA |
+-------+
|    20 |
+-------+

/*APAGANDO PROCEDURE*/

DROP PROCEDURE CONTA;


DELIMITER $ 

CREATE PROCEDURE CONTA(NUMERO1 INT, NUMERO2 INT)
BEGIN 
	SELECT NUMERO1 + NUMERO2 AS CONTA;
END 
$

DELIMITER ;

CALL CONTA(100,50);
+-------+
| CONTA |
+-------+
|   150 |
+-------+


CALL CONTA(156,12560);
+-------+
| CONTA |
+-------+
| 12716 |
+-------+

CALL CONTA(7890,51250);
+-------+
| CONTA |
+-------+
| 59140 |
+-------+

CALL CONTA(107890,578512);
+--------+
| CONTA  |
+--------+
| 686402 |
+--------+

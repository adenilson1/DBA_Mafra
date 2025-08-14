/*PROGRAMAÇÃO EM MYSQL*/
/*DELIMITER*/
SHOW DATABASES;

USE COMERCIO;

SELECT C.NOME,
	   C.SEXO,
	   IFNULL(C.EMAIL,'CLIENTE SEM EMAIL') AS 'E-MAIL',
	   T.TIPO,
	   T.NUMERO,
	   E.BAIRRO,
	   E.CIDADE,
	   E.ESTADO
FROM CLIENTE C 
INNER JOIN TELEFONE T 
ON C.IDCLIENTE = T.ID_CLIENTE
INNER JOIN ENDERECO E 
ON C.IDCLIENTE = E.ID_CLIENTE
ORDER BY 1;

+---------+------+-------------------+------+-----------+------------+----------------+--------+
| NOME    | SEXO | E-MAIL            | TIPO | NUMERO    | BAIRRO     | CIDADE         | ESTADO |
+---------+------+-------------------+------+-----------+------------+----------------+--------+
| ADRIANA | F    | ADRIANA@GMAIL.COM | COM  | 88965679  | CENTRO     | RIO DE JANEIRO | RJ     |
| ADRIANA | F    | ADRIANA@GMAIL.COM | RES  | 44522578  | CENTRO     | RIO DE JANEIRO | RJ     |
| ANA     | F    | ANA@IG.COM        | CEL  | 78989765  | JARDINS    | SAO PAULO      | SP     |
| ANA     | F    | ANA@IG.COM        | CEL  | 99766676  | JARDINS    | SAO PAULO      | SP     |
| ANTONIO | M    | ANTONIO@UOL.COM   | CEL  | 77455786  | BOM RETIRO | CURITIBA       | PR     |
| ANTONIO | M    | ANTONIO@IG.COM    | COM  | 89955665  | JARDINS    | SAO PAULO      | SP     |
| CARLOS  | M    | CARLOS@IG.COM     | RES  | 54768899  | ESTACIO    | RIO DE JANEIRO | RJ     |
| CARLOS  | M    | CARLOS@IG.COM     | CEL  | 88687909  | ESTACIO    | RIO DE JANEIRO | RJ     |
| CARMEM  | F    | CARMEM@IG.COM     | RES  | 89766554  | CENTRO     | RIO DE JANEIRO | RJ     |
| CARMEM  | F    | CARMEM@IG.COM     | RES  | 77755785  | CENTRO     | RIO DE JANEIRO | RJ     |
| DANIELE | F    | DANIELE@IG.COM    | COM  | 88679978  | CENTRO     | VITORIA        | ES     |
| EDUARDO | M    | CLIENTE SEM EMAIL | CEL  | 99655768  | CENTRO     | CURITIBA       | PR     |
| ELAINE  | F    | ELAINE@GLOBO.COM  | RES  | 55689654  | LAPA       | SAO PAULO      | SP     |
| FLAVIO  | M    | FLAVIO@IG.COM     | RES  | 68976565  | CASCADURA  | B. HORIZONTE   | MG     |
| FLAVIO  | M    | FLAVIO@IG.COM     | CEL  | 996556675 | CASCADURA  | B. HORIZONTE   | MG     |
| GEOVANA | F    | CLIENTE SEM EMAIL | CEL  | 33567765  | CENTRO     | RIO DE JANEIRO | RJ     |
| GEOVANA | F    | CLIENTE SEM EMAIL | CEL  | 88668786  | CENTRO     | RIO DE JANEIRO | RJ     |
| GEOVANA | F    | CLIENTE SEM EMAIL | COM  | 88965676  | CENTRO     | RIO DE JANEIRO | RJ     |
| JOAO    | M    | JOAO@IG.COM       | COM  | 66687899  | CENTRO     | RIO DE JANEIRO | RJ     |
| JOAO    | M    | JOAO@IG.COM       | CEL  | 99667587  | CENTRO     | RIO DE JANEIRO | RJ     |
| JOAO    | M    | JOAO@IG.COM       | COM  | 87866896  | CENTRO     | RIO DE JANEIRO | RJ     |
| JOICE   | F    | JOICE@GMAIL.COM   | CEL  | 88965679  | CENTRO     | RIO DE JANEIRO | RJ     |
| JOSE    | M    | JORGE@IG.COM      | RES  | 89986668  | CENTRO     | VITORIA        | ES     |
| JOSE    | M    | JORGE@IG.COM      | RES  | 56576876  | CENTRO     | VITORIA        | ES     |
| JOSE    | M    | JORGE@IG.COM      | CEL  | 78458743  | CENTRO     | VITORIA        | ES     |
| KARLA   | F    | KARLA@GMAIL.COM   | COM  | 89966809  | COPACABANA | RIO DE JANEIRO | RJ     |
+---------+------+-------------------+------+-----------+------------+----------------+--------+

/* NOTA: O COMANDO 'STATUS' É UM COMANDO DE INFRAESTRUTURA*/

/*MUDAR O DELIMITER*/
mysql> STATUS;
--------------
mysql  Ver 9.2.0 for Linux on x86_64 (MySQL Community Server - GPL)

Connection id:		9
Current database:	COMERCIO
Current user:		root@localhost
SSL:			Not in use
Current pager:		stdout
Using outfile:		''
Using delimiter:	;
Server version:		9.2.0 MySQL Community Server - GPL
Protocol version:	10
Connection:		Localhost via UNIX socket
Server characterset:	utf8mb4
Db     characterset:	utf8mb4
Client characterset:	latin1
Conn.  characterset:	latin1
UNIX socket:		/var/run/mysqld/mysqld.sock
Binary data as:		Hexadecimal
Uptime:			8 hours 17 min 15 sec

Threads: 2  Questions: 25  Slow queries: 0  Opens: 149  Flush tables: 3  Open tables: 68  Queries per second avg: 0.000
--------------

DELIMITER $

SELECT * FROM V_RELATORIO$
;
mysql> DELIMITER $
mysql> SELECT * FROM V_RELATORIO;
    -> $
+---------+------+-------------------+------+-----------+------------+----------------+--------+
| NOME    | SEXO | E-MAIL            | TIPO | NUMERO    | BAIRRO     | CIDADE         | ESTADO |
+---------+------+-------------------+------+-----------+------------+----------------+--------+
| JOSE    | M    | JORGE@IG.COM      | CEL  | 78458743  | CENTRO     | VITORIA        | ES     |
| JOSE    | M    | JORGE@IG.COM      | RES  | 56576876  | CENTRO     | VITORIA        | ES     |
| JOAO    | M    | JOAO@IG.COM       | COM  | 87866896  | CENTRO     | RIO DE JANEIRO | RJ     |
| CARLOS  | M    | CARLOS@IG.COM     | RES  | 54768899  | ESTACIO    | RIO DE JANEIRO | RJ     |
| JOAO    | M    | JOAO@IG.COM       | CEL  | 99667587  | CENTRO     | RIO DE JANEIRO | RJ     |
| ANA     | F    | ANA@IG.COM        | CEL  | 78989765  | JARDINS    | SAO PAULO      | SP     |
| ANA     | F    | ANA@IG.COM        | CEL  | 99766676  | JARDINS    | SAO PAULO      | SP     |
| JOAO    | M    | JOAO@IG.COM       | COM  | 66687899  | CENTRO     | RIO DE JANEIRO | RJ     |
| JOSE    | M    | JORGE@IG.COM      | RES  | 89986668  | CENTRO     | VITORIA        | ES     |
| CARLOS  | M    | CARLOS@IG.COM     | CEL  | 88687909  | ESTACIO    | RIO DE JANEIRO | RJ     |
| FLAVIO  | M    | FLAVIO@IG.COM     | RES  | 68976565  | CASCADURA  | B. HORIZONTE   | MG     |
| FLAVIO  | M    | FLAVIO@IG.COM     | CEL  | 996556675 | CASCADURA  | B. HORIZONTE   | MG     |
| GEOVANA | F    | ***********       | CEL  | 33567765  | CENTRO     | RIO DE JANEIRO | RJ     |
| GEOVANA | F    | ***********       | CEL  | 88668786  | CENTRO     | RIO DE JANEIRO | RJ     |
| GEOVANA | F    | ***********       | COM  | 88965676  | CENTRO     | RIO DE JANEIRO | RJ     |
| KARLA   | F    | KARLA@GMAIL.COM   | COM  | 89966809  | COPACABANA | RIO DE JANEIRO | RJ     |
| DANIELE | F    | DANIELE@IG.COM    | COM  | 88679978  | CENTRO     | VITORIA        | ES     |
| EDUARDO | M    | ***********       | CEL  | 99655768  | CENTRO     | CURITIBA       | PR     |
| ANTONIO | M    | ANTONIO@IG.COM    | COM  | 89955665  | JARDINS    | SAO PAULO      | SP     |
| ANTONIO | M    | ANTONIO@UOL.COM   | CEL  | 77455786  | BOM RETIRO | CURITIBA       | PR     |
| ELAINE  | F    | ELAINE@GLOBO.COM  | RES  | 55689654  | LAPA       | SAO PAULO      | SP     |
| CARMEM  | F    | CARMEM@IG.COM     | RES  | 89766554  | CENTRO     | RIO DE JANEIRO | RJ     |
| CARMEM  | F    | CARMEM@IG.COM     | RES  | 77755785  | CENTRO     | RIO DE JANEIRO | RJ     |
| ADRIANA | F    | ADRIANA@GMAIL.COM | RES  | 44522578  | CENTRO     | RIO DE JANEIRO | RJ     |
| ADRIANA | F    | ADRIANA@GMAIL.COM | COM  | 88965679  | CENTRO     | RIO DE JANEIRO | RJ     |
| JOICE   | F    | JOICE@GMAIL.COM   | CEL  | 88965679  | CENTRO     | RIO DE JANEIRO | RJ     |
+---------+------+-------------------+------+-----------+------------+----------------+--------+

mysql> STATUS
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
Uptime:			8 hours 21 min 40 sec

Threads: 2  Questions: 29  Slow queries: 0  Opens: 149  Flush tables: 3  Open tables: 68  Queries per second avg: 0.000
--------------

/*VOLTAR PARA DELIMITER ;*/

DELIMITER ;
STATUS
mysql  Ver 9.2.0 for Linux on x86_64 (MySQL Community Server - GPL)

Connection id:		9
Current database:	COMERCIO
Current user:		root@localhost
SSL:			Not in use
Current pager:		stdout
Using outfile:		''
Using delimiter:	;
Server version:		9.2.0 MySQL Community Server - GPL
Protocol version:	10
Connection:		Localhost via UNIX socket
Server characterset:	utf8mb4
Db     characterset:	utf8mb4
Client characterset:	latin1
Conn.  characterset:	latin1
UNIX socket:		/var/run/mysqld/mysqld.sock
Binary data as:		Hexadecimal
Uptime:			8 hours 23 min 31 sec

Threads: 2  Questions: 32  Slow queries: 0  Opens: 149  Flush tables: 3  Open tables: 68  Queries per second avg: 0.001
--------------

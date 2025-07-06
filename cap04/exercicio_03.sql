/*EXERCICIO DE FIXAÇÃO - 03*/

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

SHOW TABLES;
+--------------------+
| Tables_in_COMERCIO |
+--------------------+
| CLIENTE            |
| ENDERECO           |
| PRODUTO            |
| TELEFONE           |
+--------------------+

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

/*INSERINDO MAIS CLIENTES- ENDERECOS E TELEFONES*/
INSERT INTO CLIENTE VALUES (NULL, 'FLAVIO','M','4657765','FLAVIO@IG.COM');
INSERT INTO CLIENTE VALUES (NULL, 'ANDRE','M','7687567','ANDRE@GLOBO.COM');
INSERT INTO CLIENTE VALUES (NULL, 'GEOVANA','F','0876655',NULL);
INSERT INTO CLIENTE VALUES (NULL, 'KARLA','M','545676778','KARLA@GMAIL.COM');
INSERT INTO CLIENTE VALUES (NULL, 'DANIELE','M','43536789','DANILELE@IG.COM');
INSERT INTO CLIENTE VALUES (NULL, 'LORENA','M','774557887',NULL);
INSERT INTO CLIENTE VALUES (NULL, 'EDUARDO','M','54376457',NULL);
INSERT INTO CLIENTE VALUES (NULL, 'ANTONIO','F','12436767','ANTONIO@IG.COM');
INSERT INTO CLIENTE VALUES (NULL, 'ANTONIO','M','3423565','ANTONIO@UOL.COM');
INSERT INTO CLIENTE VALUES (NULL, 'ELAINE','M','32567763','ELAINE@GLOBO.COM');
INSERT INTO CLIENTE VALUES (NULL, 'CARMEM','M','787832213','CARMEM@IG.COM');
INSERT INTO CLIENTE VALUES (NULL, 'ADRIANA','F','88556942','ADRIANA@GMAIL.COM');
INSERT INTO CLIENTE VALUES (NULL, 'JOICE','F','55412256','JOICE@GMAIL.COM');


SELECT * FROM CLIENTE;
+-----------+---------+------+-------------+-------------------+
| IDCLIENTE | NOME    | SEXO | CPF         | EMAIL             |
+-----------+---------+------+-------------+-------------------+
|         1 | JOAO    | M    | 76567587887 | JOAO@IG.COM       |
|         2 | CARLOS  | M    | 5464553466  | CARLOS@IG.COM     |
|         3 | ANA     | F    | 456545678   | ANA@IG.COM        |
|         4 | CLARA   | F    | 5687766856  | NULL              |
|         5 | JORGE   | M    | 8756547688  | JORGE@IG.COM      |
|         6 | CELIA   | F    | 5767876889  | CELIA@IG.COME     |
|         7 | PAULA   | F    | 77437493    | NULL              |
|        20 | FLAVIO  | M    | 4657765     | FLAVIO@IG.COM     |
|        21 | ANDRE   | M    | 7687567     | ANDRE@GLOBO.COM   |
|        22 | GEOVANA | F    | 0876655     | NULL              |
|        23 | KARLA   | M    | 545676778   | KARLA@GMAIL.COM   |
|        24 | DANIELE | M    | 43536789    | DANILELE@IG.COM   |
|        25 | LORENA  | M    | 774557887   | NULL              |
|        26 | EDUARDO | M    | 54376457    | NULL              |
|        27 | ANTONIO | F    | 12436767    | ANTONIO@IG.COM    |
|        28 | ANTONIO | M    | 3423565     | ANTONIO@UOL.COM   |
|        29 | ELAINE  | M    | 32567763    | ELAINE@GLOBO.COM  |
|        30 | CARMEM  | M    | 787832213   | CARMEM@IG.COM     |
|        31 | ADRIANA | F    | 88556942    | ADRIANA@GMAIL.COM |
|        32 | JOICE   | F    | 55412256    | JOICE@GMAIL.COM   |
+-----------+---------+------+-------------+-------------------+


DESC ENDERECO;

INSERT INTO ENDERECO VALUES(NULL,'RUA GUEDES','CASCADURA','B. HORIZONTE','MG',20);
INSERT INTO ENDERECO VALUES(NULL,'RUA MAIA LACERDA','ESTACIO','RIO DE JANEIRO','RJ',21);
INSERT INTO ENDERECO VALUES(NULL,'RUA VISCONDESSA','CENTRO','RIO DE JANEIRO','RJ',22);
INSERT INTO ENDERECO VALUES(NULL,'RUA NELSON MANDELA','COPACABANA','RIO DE JANEIRO','RJ',23);
INSERT INTO ENDERECO VALUES(NULL,'RUA ARAUJO LIMA','CENTRO','VITORIA','ES',24);
INSERT INTO ENDERECO VALUES(NULL,'RUA CASTRO ALVES','LEBLON','RIO DE JANEIRO','RJ',25);
INSERT INTO ENDERECO VALUES(NULL,'AV. CAPITAO ANTUNES','CENTRO','CURITIBA','PR',26);
INSERT INTO ENDERECO VALUES(NULL,'AV. CARLOS BARROSO','JARDINS','SAO PAULO','SP',27);
INSERT INTO ENDERECO VALUES(NULL,'ALMEIDA SAMPAIO','BOM RETIRO','CURITIBA','PR',28);
INSERT INTO ENDERECO VALUES(NULL,'RUA DA LAPA','LAPA','SAO PAULO','SP',29);
INSERT INTO ENDERECO VALUES(NULL,'RUA GERONIMO','CENTRO','RIO DE JANEIRO','RJ',30);
INSERT INTO ENDERECO VALUES(NULL,'RUA GOMES FREIRE','CENTRO','RIO DE JANEIRO','RJ',31);
INSERT INTO ENDERECO VALUES(NULL,'RUA GOMES FREIRE','CENTRO','RIO DE JANEIRO','RJ',32);

SELECT * FROM ENDERECO;
+------------+---------------------+------------+----------------+--------+------------+
| IDENDERECO | RUA                 | BAIRRO     | CIDADE         | ESTADO | ID_CLIENTE |
+------------+---------------------+------------+----------------+--------+------------+
|          1 | RUA ANTONIO SA      | CENTRO     | BELO HORIZONTE | MG     |          4 |
|          2 | RUA CAPITAO HERMES  | CENTRO     | RIO DE JANEIRO | RJ     |          1 |
|          3 | RUA PRES VARGAS     | JARDINS    | SAO PAULO      | SP     |          3 |
|          4 | RUA ALFANDEGA       | ESTACIO    | RIO DE JANEIRO | RJ     |          2 |
|          5 | RUA DO OUVIDOR      | FLAMENGO   | RIO DE JANEIRO | RJ     |          6 |
|          6 | RUA URUGUAIANA      | CENTRO     | VITORIA        | ES     |          5 |
|          7 | RUA JOAQUIM SILVA   | ALVORADA   | NITEROI        | RJ     |          7 |
|          8 | RUA GUEDES          | CASCADURA  | B. HORIZONTE   | MG     |         20 |
|          9 | RUA MAIA LACERDA    | ESTACIO    | RIO DE JANEIRO | RJ     |         21 |
|         10 | RUA VISCONDESSA     | CENTRO     | RIO DE JANEIRO | RJ     |         22 |
|         11 | RUA NELSON MANDELA  | COPACABANA | RIO DE JANEIRO | RJ     |         23 |
|         12 | RUA ARAUJO LIMA     | CENTRO     | VITORIA        | ES     |         24 |
|         13 | RUA CASTRO ALVES    | LEBLON     | RIO DE JANEIRO | RJ     |         25 |
|         14 | AV. CAPITAO ANTUNES | CENTRO     | CURITIBA       | PR     |         26 |
|         15 | AV. CARLOS BARROSO  | JARDINS    | SAO PAULO      | SP     |         27 |
|         16 | ALMEIDA SAMPAIO     | BOM RETIRO | CURITIBA       | PR     |         28 |
|         17 | RUA DA LAPA         | LAPA       | SAO PAULO      | SP     |         29 |
|         18 | RUA GERONIMO        | CENTRO     | RIO DE JANEIRO | RJ     |         30 |
|         19 | RUA GOMES FREIRE    | CENTRO     | RIO DE JANEIRO | RJ     |         31 |
|         20 | RUA GOMES FREIRE    | CENTRO     | RIO DE JANEIRO | RJ     |         32 |
+------------+---------------------+------------+----------------+--------+------------+


DESC TELEFONE;

INSERT INTO TELEFONE VALUES(NULL, 'RES','68976565',20);
INSERT INTO TELEFONE VALUES(NULL, 'CEL','996556675',20);
INSERT INTO TELEFONE VALUES(NULL, 'CEL','33567765',22);
INSERT INTO TELEFONE VALUES(NULL, 'CEL','88668786',22);
INSERT INTO TELEFONE VALUES(NULL, 'COM','88965676',22);
INSERT INTO TELEFONE VALUES(NULL, 'COM','89966809',23);
INSERT INTO TELEFONE VALUES(NULL, 'COM','88679978',24);
INSERT INTO TELEFONE VALUES(NULL, 'CEL','99655768',26);
INSERT INTO TELEFONE VALUES(NULL, 'COM','89955665',27);
INSERT INTO TELEFONE VALUES(NULL, 'CEL','77455786',28);
INSERT INTO TELEFONE VALUES(NULL, 'RES','55689654',29);
INSERT INTO TELEFONE VALUES(NULL, 'RES','89766554',30);
INSERT INTO TELEFONE VALUES(NULL, 'RES','77755785',30);
INSERT INTO TELEFONE VALUES(NULL, 'RES','44522578',31);
INSERT INTO TELEFONE VALUES(NULL, 'COM','88965679',31);
INSERT INTO TELEFONE VALUES(NULL, 'CEL','88965679',32);

SELECT * FROM TELEFONE;
+------------+------+-----------+------------+
| IDTELEFONE | TIPO | NUMERO    | ID_CLIENTE |
+------------+------+-----------+------------+
|          1 | CEL  | 78458743  |          5 |
|          2 | RES  | 56576876  |          5 |
|          3 | COM  | 87866896  |          1 |
|          4 | RES  | 54768899  |          2 |
|          5 | CEL  | 99667587  |          1 |
|          6 | CEL  | 78989765  |          3 |
|          7 | CEL  | 99766676  |          3 |
|          8 | COM  | 66687899  |          1 |
|          9 | RES  | 89986668  |          5 |
|         10 | CEL  | 88687909  |          2 |
|         11 | RES  | 68976565  |         20 |
|         12 | CEL  | 996556675 |         20 |
|         13 | CEL  | 33567765  |         22 |
|         14 | CEL  | 88668786  |         22 |
|         15 | COM  | 88965676  |         22 |
|         16 | COM  | 89966809  |         23 |
|         17 | COM  | 88679978  |         24 |
|         18 | CEL  | 99655768  |         26 |
|         19 | COM  | 89955665  |         27 |
|         20 | CEL  | 77455786  |         28 |
|         21 | RES  | 55689654  |         29 |
|         22 | RES  | 89766554  |         30 |
|         23 | RES  | 77755785  |         30 |
|         24 | RES  | 44522578  |         31 |
|         25 | COM  | 88965679  |         31 |
|         26 | CEL  | 88965679  |         32 |
+------------+------+-----------+------------+

/*QUERYS*/

/*
1) RELATORIO GERAL DE TODOS OS CLIENTES- ENDERECO E TELEFONE

2) RELATORIO DE HOMENS

3) RELATORIO DE MULHERES

4) QUANTIDADE DE HOMENS E MULHERES 

5) IDS E EMAIL DAS MULHERES QUE MORAM NO CENTRO DO RIO DE JANEIRO E 
NÃO TEM UM CELULAR

*/

/*1*/
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

SELECT C.IDCLIENTE, C.NOME, C.SEXO, C.EMAIL, C.CPF, E.RUA, E.BAIRRO, E.CIDADE, E.ESTADO, 
T.TIPO, T.NUMERO
FROM CLIENTE C 
INNER JOIN ENDERECO E 
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T 
ON C.IDCLIENTE = T.ID_CLIENTE;
+-----------+---------+------+-------------------+-------------+---------------------+------------+----------------+--------+------+-----------+
| IDCLIENTE | NOME    | SEXO | EMAIL             | CPF         | RUA                 | BAIRRO     | CIDADE         | ESTADO | TIPO | NUMERO    |
+-----------+---------+------+-------------------+-------------+---------------------+------------+----------------+--------+------+-----------+
|         5 | JORGE   | M    | JORGE@IG.COM      | 8756547688  | RUA URUGUAIANA      | CENTRO     | VITORIA        | ES     | CEL  | 78458743  |
|         5 | JORGE   | M    | JORGE@IG.COM      | 8756547688  | RUA URUGUAIANA      | CENTRO     | VITORIA        | ES     | RES  | 56576876  |
|         1 | JOAO    | M    | JOAO@IG.COM       | 76567587887 | RUA CAPITAO HERMES  | CENTRO     | RIO DE JANEIRO | RJ     | COM  | 87866896  |
|         2 | CARLOS  | M    | CARLOS@IG.COM     | 5464553466  | RUA ALFANDEGA       | ESTACIO    | RIO DE JANEIRO | RJ     | RES  | 54768899  |
|         1 | JOAO    | M    | JOAO@IG.COM       | 76567587887 | RUA CAPITAO HERMES  | CENTRO     | RIO DE JANEIRO | RJ     | CEL  | 99667587  |
|         3 | ANA     | F    | ANA@IG.COM        | 456545678   | RUA PRES VARGAS     | JARDINS    | SAO PAULO      | SP     | CEL  | 78989765  |
|         3 | ANA     | F    | ANA@IG.COM        | 456545678   | RUA PRES VARGAS     | JARDINS    | SAO PAULO      | SP     | CEL  | 99766676  |
|         1 | JOAO    | M    | JOAO@IG.COM       | 76567587887 | RUA CAPITAO HERMES  | CENTRO     | RIO DE JANEIRO | RJ     | COM  | 66687899  |
|         5 | JORGE   | M    | JORGE@IG.COM      | 8756547688  | RUA URUGUAIANA      | CENTRO     | VITORIA        | ES     | RES  | 89986668  |
|         2 | CARLOS  | M    | CARLOS@IG.COM     | 5464553466  | RUA ALFANDEGA       | ESTACIO    | RIO DE JANEIRO | RJ     | CEL  | 88687909  |
|        20 | FLAVIO  | M    | FLAVIO@IG.COM     | 4657765     | RUA GUEDES          | CASCADURA  | B. HORIZONTE   | MG     | RES  | 68976565  |
|        20 | FLAVIO  | M    | FLAVIO@IG.COM     | 4657765     | RUA GUEDES          | CASCADURA  | B. HORIZONTE   | MG     | CEL  | 996556675 |
|        22 | GEOVANA | F    | NULL              | 0876655     | RUA VISCONDESSA     | CENTRO     | RIO DE JANEIRO | RJ     | CEL  | 33567765  |
|        22 | GEOVANA | F    | NULL              | 0876655     | RUA VISCONDESSA     | CENTRO     | RIO DE JANEIRO | RJ     | CEL  | 88668786  |
|        22 | GEOVANA | F    | NULL              | 0876655     | RUA VISCONDESSA     | CENTRO     | RIO DE JANEIRO | RJ     | COM  | 88965676  |
|        23 | KARLA   | M    | KARLA@GMAIL.COM   | 545676778   | RUA NELSON MANDELA  | COPACABANA | RIO DE JANEIRO | RJ     | COM  | 89966809  |
|        24 | DANIELE | M    | DANILELE@IG.COM   | 43536789    | RUA ARAUJO LIMA     | CENTRO     | VITORIA        | ES     | COM  | 88679978  |
|        26 | EDUARDO | M    | NULL              | 54376457    | AV. CAPITAO ANTUNES | CENTRO     | CURITIBA       | PR     | CEL  | 99655768  |
|        27 | ANTONIO | F    | ANTONIO@IG.COM    | 12436767    | AV. CARLOS BARROSO  | JARDINS    | SAO PAULO      | SP     | COM  | 89955665  |
|        28 | ANTONIO | M    | ANTONIO@UOL.COM   | 3423565     | ALMEIDA SAMPAIO     | BOM RETIRO | CURITIBA       | PR     | CEL  | 77455786  |
|        29 | ELAINE  | M    | ELAINE@GLOBO.COM  | 32567763    | RUA DA LAPA         | LAPA       | SAO PAULO      | SP     | RES  | 55689654  |
|        30 | CARMEM  | M    | CARMEM@IG.COM     | 787832213   | RUA GERONIMO        | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 89766554  |
|        30 | CARMEM  | M    | CARMEM@IG.COM     | 787832213   | RUA GERONIMO        | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 77755785  |
|        31 | ADRIANA | F    | ADRIANA@GMAIL.COM | 88556942    | RUA GOMES FREIRE    | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 44522578  |
|        31 | ADRIANA | F    | ADRIANA@GMAIL.COM | 88556942    | RUA GOMES FREIRE    | CENTRO     | RIO DE JANEIRO | RJ     | COM  | 88965679  |
|        32 | JOICE   | F    | JOICE@GMAIL.COM   | 55412256    | RUA GOMES FREIRE    | CENTRO     | RIO DE JANEIRO | RJ     | CEL  | 88965679  |
+-----------+---------+------+-------------------+-------------+---------------------+------------+----------------+--------+------+-----------+

SELECT C.IDCLIENTE, C.NOME, C.SEXO, C.EMAIL, C.CPF, E.RUA, E.BAIRRO, E.CIDADE, E.ESTADO, 
T.TIPO, T.NUMERO
FROM CLIENTE C 
INNER JOIN ENDERECO E 
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T 
ON C.IDCLIENTE = T.ID_CLIENTE
WHERE SEXO = 'M';
+-----------+---------+------+------------------+-------------+---------------------+------------+----------------+--------+------+-----------+
| IDCLIENTE | NOME    | SEXO | EMAIL            | CPF         | RUA                 | BAIRRO     | CIDADE         | ESTADO | TIPO | NUMERO    |
+-----------+---------+------+------------------+-------------+---------------------+------------+----------------+--------+------+-----------+
|         1 | JOAO    | M    | JOAO@IG.COM      | 76567587887 | RUA CAPITAO HERMES  | CENTRO     | RIO DE JANEIRO | RJ     | COM  | 87866896  |
|         1 | JOAO    | M    | JOAO@IG.COM      | 76567587887 | RUA CAPITAO HERMES  | CENTRO     | RIO DE JANEIRO | RJ     | CEL  | 99667587  |
|         1 | JOAO    | M    | JOAO@IG.COM      | 76567587887 | RUA CAPITAO HERMES  | CENTRO     | RIO DE JANEIRO | RJ     | COM  | 66687899  |
|         2 | CARLOS  | M    | CARLOS@IG.COM    | 5464553466  | RUA ALFANDEGA       | ESTACIO    | RIO DE JANEIRO | RJ     | RES  | 54768899  |
|         2 | CARLOS  | M    | CARLOS@IG.COM    | 5464553466  | RUA ALFANDEGA       | ESTACIO    | RIO DE JANEIRO | RJ     | CEL  | 88687909  |
|         5 | JORGE   | M    | JORGE@IG.COM     | 8756547688  | RUA URUGUAIANA      | CENTRO     | VITORIA        | ES     | CEL  | 78458743  |
|         5 | JORGE   | M    | JORGE@IG.COM     | 8756547688  | RUA URUGUAIANA      | CENTRO     | VITORIA        | ES     | RES  | 56576876  |
|         5 | JORGE   | M    | JORGE@IG.COM     | 8756547688  | RUA URUGUAIANA      | CENTRO     | VITORIA        | ES     | RES  | 89986668  |
|        20 | FLAVIO  | M    | FLAVIO@IG.COM    | 4657765     | RUA GUEDES          | CASCADURA  | B. HORIZONTE   | MG     | RES  | 68976565  |
|        20 | FLAVIO  | M    | FLAVIO@IG.COM    | 4657765     | RUA GUEDES          | CASCADURA  | B. HORIZONTE   | MG     | CEL  | 996556675 |
|        23 | KARLA   | M    | KARLA@GMAIL.COM  | 545676778   | RUA NELSON MANDELA  | COPACABANA | RIO DE JANEIRO | RJ     | COM  | 89966809  |
|        24 | DANIELE | M    | DANILELE@IG.COM  | 43536789    | RUA ARAUJO LIMA     | CENTRO     | VITORIA        | ES     | COM  | 88679978  |
|        26 | EDUARDO | M    | NULL             | 54376457    | AV. CAPITAO ANTUNES | CENTRO     | CURITIBA       | PR     | CEL  | 99655768  |
|        28 | ANTONIO | M    | ANTONIO@UOL.COM  | 3423565     | ALMEIDA SAMPAIO     | BOM RETIRO | CURITIBA       | PR     | CEL  | 77455786  |
|        29 | ELAINE  | M    | ELAINE@GLOBO.COM | 32567763    | RUA DA LAPA         | LAPA       | SAO PAULO      | SP     | RES  | 55689654  |
|        30 | CARMEM  | M    | CARMEM@IG.COM    | 787832213   | RUA GERONIMO        | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 89766554  |
|        30 | CARMEM  | M    | CARMEM@IG.COM    | 787832213   | RUA GERONIMO        | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 77755785  |
+-----------+---------+------+------------------+-------------+---------------------+------------+----------------+--------+------+-----------+

/*FAZENDO UM UPDATE PARA CORRIGIR CLIENTE COM O SEXO ERRADO*/
SELECT * FROM CLIENTE
WHERE IDCLIENTE = 23;

UPDATE CLIENTE
SET SEXO = 'F'
WHERE IDCLIENTE = 23;

SELECT * FROM CLIENTE
WHERE IDCLIENTE = 29;

UPDATE CLIENTE
SET SEXO = 'F'
WHERE IDCLIENTE = 29;

SELECT * FROM CLIENTE
WHERE IDCLIENTE = 30;

UPDATE CLIENTE
SET SEXO = 'F'
WHERE IDCLIENTE = 30;

SELECT * FROM CLIENTE
WHERE IDCLIENTE = 24;

UPDATE CLIENTE
SET EMAIL = 'DANIELE@IG.COM'
WHERE IDCLIENTE = 24;

UPDATE CLIENTE
SET SEXO = 'F'
WHERE IDCLIENTE = 24;

SELECT C.IDCLIENTE, C.NOME, C.SEXO, C.EMAIL, C.CPF, E.RUA, E.BAIRRO, E.CIDADE, E.ESTADO, 
T.TIPO, T.NUMERO
FROM CLIENTE C 
INNER JOIN ENDERECO E 
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T 
ON C.IDCLIENTE = T.ID_CLIENTE
WHERE SEXO = 'M';
+-----------+---------+------+-----------------+-------------+---------------------+------------+----------------+--------+------+-----------+
| IDCLIENTE | NOME    | SEXO | EMAIL           | CPF         | RUA                 | BAIRRO     | CIDADE         | ESTADO | TIPO | NUMERO    |
+-----------+---------+------+-----------------+-------------+---------------------+------------+----------------+--------+------+-----------+
|         1 | JOAO    | M    | JOAO@IG.COM     | 76567587887 | RUA CAPITAO HERMES  | CENTRO     | RIO DE JANEIRO | RJ     | COM  | 87866896  |
|         1 | JOAO    | M    | JOAO@IG.COM     | 76567587887 | RUA CAPITAO HERMES  | CENTRO     | RIO DE JANEIRO | RJ     | CEL  | 99667587  |
|         1 | JOAO    | M    | JOAO@IG.COM     | 76567587887 | RUA CAPITAO HERMES  | CENTRO     | RIO DE JANEIRO | RJ     | COM  | 66687899  |
|         2 | CARLOS  | M    | CARLOS@IG.COM   | 5464553466  | RUA ALFANDEGA       | ESTACIO    | RIO DE JANEIRO | RJ     | RES  | 54768899  |
|         2 | CARLOS  | M    | CARLOS@IG.COM   | 5464553466  | RUA ALFANDEGA       | ESTACIO    | RIO DE JANEIRO | RJ     | CEL  | 88687909  |
|         5 | JORGE   | M    | JORGE@IG.COM    | 8756547688  | RUA URUGUAIANA      | CENTRO     | VITORIA        | ES     | CEL  | 78458743  |
|         5 | JORGE   | M    | JORGE@IG.COM    | 8756547688  | RUA URUGUAIANA      | CENTRO     | VITORIA        | ES     | RES  | 56576876  |
|         5 | JORGE   | M    | JORGE@IG.COM    | 8756547688  | RUA URUGUAIANA      | CENTRO     | VITORIA        | ES     | RES  | 89986668  |
|        20 | FLAVIO  | M    | FLAVIO@IG.COM   | 4657765     | RUA GUEDES          | CASCADURA  | B. HORIZONTE   | MG     | RES  | 68976565  |
|        20 | FLAVIO  | M    | FLAVIO@IG.COM   | 4657765     | RUA GUEDES          | CASCADURA  | B. HORIZONTE   | MG     | CEL  | 996556675 |
|        26 | EDUARDO | M    | NULL            | 54376457    | AV. CAPITAO ANTUNES | CENTRO     | CURITIBA       | PR     | CEL  | 99655768  |
|        28 | ANTONIO | M    | ANTONIO@UOL.COM | 3423565     | ALMEIDA SAMPAIO     | BOM RETIRO | CURITIBA       | PR     | CEL  | 77455786  |
+-----------+---------+------+-----------------+-------------+---------------------+------------+----------------+--------+------+-----------+


SELECT C.IDCLIENTE, C.NOME, C.SEXO, C.EMAIL, C.CPF, E.RUA, E.BAIRRO, E.CIDADE, E.ESTADO, 
T.TIPO, T.NUMERO
FROM CLIENTE C 
INNER JOIN ENDERECO E 
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T 
ON C.IDCLIENTE = T.ID_CLIENTE
WHERE SEXO = 'F';
-+------------+----------------+--------+------+----------+
| IDCLIENTE | NOME    | SEXO | EMAIL             | CPF       | RUA                | BAIRRO     | CIDADE         | ESTADO | TIPO | NUMERO   |
+-----------+---------+------+-------------------+-----------+--------------------+------------+----------------+--------+------+----------+
|         3 | ANA     | F    | ANA@IG.COM        | 456545678 | RUA PRES VARGAS    | JARDINS    | SAO PAULO      | SP     | CEL  | 78989765 |
|         3 | ANA     | F    | ANA@IG.COM        | 456545678 | RUA PRES VARGAS    | JARDINS    | SAO PAULO      | SP     | CEL  | 99766676 |
|        22 | GEOVANA | F    | NULL              | 0876655   | RUA VISCONDESSA    | CENTRO     | RIO DE JANEIRO | RJ     | CEL  | 33567765 |
|        22 | GEOVANA | F    | NULL              | 0876655   | RUA VISCONDESSA    | CENTRO     | RIO DE JANEIRO | RJ     | CEL  | 88668786 |
|        22 | GEOVANA | F    | NULL              | 0876655   | RUA VISCONDESSA    | CENTRO     | RIO DE JANEIRO | RJ     | COM  | 88965676 |
|        23 | KARLA   | F    | KARLA@GMAIL.COM   | 545676778 | RUA NELSON MANDELA | COPACABANA | RIO DE JANEIRO | RJ     | COM  | 89966809 |
|        24 | DANIELE | F    | DANIELE@IG.COM    | 43536789  | RUA ARAUJO LIMA    | CENTRO     | VITORIA        | ES     | COM  | 88679978 |
|        27 | ANTONIO | F    | ANTONIO@IG.COM    | 12436767  | AV. CARLOS BARROSO | JARDINS    | SAO PAULO      | SP     | COM  | 89955665 |
|        29 | ELAINE  | F    | ELAINE@GLOBO.COM  | 32567763  | RUA DA LAPA        | LAPA       | SAO PAULO      | SP     | RES  | 55689654 |
|        30 | CARMEM  | F    | CARMEM@IG.COM     | 787832213 | RUA GERONIMO       | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 89766554 |
|        30 | CARMEM  | F    | CARMEM@IG.COM     | 787832213 | RUA GERONIMO       | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 77755785 |
|        31 | ADRIANA | F    | ADRIANA@GMAIL.COM | 88556942  | RUA GOMES FREIRE   | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 44522578 |
|        31 | ADRIANA | F    | ADRIANA@GMAIL.COM | 88556942  | RUA GOMES FREIRE   | CENTRO     | RIO DE JANEIRO | RJ     | COM  | 88965679 |
|        32 | JOICE   | F    | JOICE@GMAIL.COM   | 55412256  | RUA GOMES FREIRE   | CENTRO     | RIO DE JANEIRO | RJ     | CEL  | 88965679 |
+-----------+---------+------+-------------------+-----------+--------------------+------------+----------------+--------+------+----------+

SELECT * FROM CLIENTE
WHERE IDCLIENTE = 27;

UPDATE CLIENTE
SET SEXO = 'M'
WHERE IDCLIENTE = 27;

SELECT C.IDCLIENTE, C.NOME, C.SEXO, C.EMAIL, C.CPF, E.RUA, E.BAIRRO, E.CIDADE, E.ESTADO, 
T.TIPO, T.NUMERO
FROM CLIENTE C 
INNER JOIN ENDERECO E 
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T 
ON C.IDCLIENTE = T.ID_CLIENTE
WHERE SEXO = 'F';

+-----------+---------+------+-------------------+-----------+--------------------+------------+----------------+--------+------+----------+
| IDCLIENTE | NOME    | SEXO | EMAIL             | CPF       | RUA                | BAIRRO     | CIDADE         | ESTADO | TIPO | NUMERO   |
+-----------+---------+------+-------------------+-----------+--------------------+------------+----------------+--------+------+----------+
|         3 | ANA     | F    | ANA@IG.COM        | 456545678 | RUA PRES VARGAS    | JARDINS    | SAO PAULO      | SP     | CEL  | 78989765 |
|         3 | ANA     | F    | ANA@IG.COM        | 456545678 | RUA PRES VARGAS    | JARDINS    | SAO PAULO      | SP     | CEL  | 99766676 |
|        22 | GEOVANA | F    | NULL              | 0876655   | RUA VISCONDESSA    | CENTRO     | RIO DE JANEIRO | RJ     | CEL  | 33567765 |
|        22 | GEOVANA | F    | NULL              | 0876655   | RUA VISCONDESSA    | CENTRO     | RIO DE JANEIRO | RJ     | CEL  | 88668786 |
|        22 | GEOVANA | F    | NULL              | 0876655   | RUA VISCONDESSA    | CENTRO     | RIO DE JANEIRO | RJ     | COM  | 88965676 |
|        23 | KARLA   | F    | KARLA@GMAIL.COM   | 545676778 | RUA NELSON MANDELA | COPACABANA | RIO DE JANEIRO | RJ     | COM  | 89966809 |
|        24 | DANIELE | F    | DANIELE@IG.COM    | 43536789  | RUA ARAUJO LIMA    | CENTRO     | VITORIA        | ES     | COM  | 88679978 |
|        29 | ELAINE  | F    | ELAINE@GLOBO.COM  | 32567763  | RUA DA LAPA        | LAPA       | SAO PAULO      | SP     | RES  | 55689654 |
|        30 | CARMEM  | F    | CARMEM@IG.COM     | 787832213 | RUA GERONIMO       | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 89766554 |
|        30 | CARMEM  | F    | CARMEM@IG.COM     | 787832213 | RUA GERONIMO       | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 77755785 |
|        31 | ADRIANA | F    | ADRIANA@GMAIL.COM | 88556942  | RUA GOMES FREIRE   | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 44522578 |
|        31 | ADRIANA | F    | ADRIANA@GMAIL.COM | 88556942  | RUA GOMES FREIRE   | CENTRO     | RIO DE JANEIRO | RJ     | COM  | 88965679 |
|        32 | JOICE   | F    | JOICE@GMAIL.COM   | 55412256  | RUA GOMES FREIRE   | CENTRO     | RIO DE JANEIRO | RJ     | CEL  | 88965679 |
+-----------+---------+------+-------------------+-----------+--------------------+------------+----------------+--------+------+----------+


SELECT COUNT(*) AS QUANTIDADE, SEXO 
FROM CLIENTE
GROUP BY SEXO;

+------------+------+
| QUANTIDADE | SEXO |
+------------+------+
|          9 | M    |
|         11 | F    |
+------------+------+

SELECT * FROM CLIENTE;

SELECT C.IDCLIENTE, C.NOME,C.SEXO, C.EMAIL, E.RUA, E.BAIRRO, E.CIDADE, E.ESTADO, T.TIPO, T.NUMERO
FROM CLIENTE C 
INNER JOIN ENDERECO E 
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T 
ON C.IDCLIENTE = T.ID_CLIENTE
WHERE (C.SEXO = 'F' AND C.SEXO = 'F') AND (E.BAIRRO = 'CENTRO' AND E.CIDADE = 'RIO DE JANEIRO')
AND (T.TIPO = 'COM' OR T.TIPO = 'RES');
+-----------+---------+------+-------------------+------------------+--------+----------------+--------+------+----------+
| IDCLIENTE | NOME    | SEXO | EMAIL             | RUA              | BAIRRO | CIDADE         | ESTADO | TIPO | NUMERO   |
+-----------+---------+------+-------------------+------------------+--------+----------------+--------+------+----------+
|        22 | GEOVANA | F    | NULL              | RUA VISCONDESSA  | CENTRO | RIO DE JANEIRO | RJ     | COM  | 88965676 |
|        30 | CARMEM  | F    | CARMEM@IG.COM     | RUA GERONIMO     | CENTRO | RIO DE JANEIRO | RJ     | RES  | 89766554 |
|        30 | CARMEM  | F    | CARMEM@IG.COM     | RUA GERONIMO     | CENTRO | RIO DE JANEIRO | RJ     | RES  | 77755785 |
|        31 | ADRIANA | F    | ADRIANA@GMAIL.COM | RUA GOMES FREIRE | CENTRO | RIO DE JANEIRO | RJ     | RES  | 44522578 |
|        31 | ADRIANA | F    | ADRIANA@GMAIL.COM | RUA GOMES FREIRE | CENTRO | RIO DE JANEIRO | RJ     | COM  | 88965679 |
+-----------+---------+------+-------------------+------------------+--------+----------------+--------+------+----------+

SELECT C.IDCLIENTE,C.EMAIL
FROM CLIENTE C 
INNER JOIN ENDERECO E 
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T 
ON C.IDCLIENTE = T.ID_CLIENTE
WHERE (C.SEXO = 'F' AND C.SEXO = 'F') AND (E.BAIRRO = 'CENTRO' AND E.CIDADE = 'RIO DE JANEIRO')
AND (T.TIPO = 'COM' OR T.TIPO = 'RES');

+-----------+-------------------+
| IDCLIENTE | EMAIL             |
+-----------+-------------------+
|        22 | NULL              |
|        30 | CARMEM@IG.COM     |
|        30 | CARMEM@IG.COM     |
|        31 | ADRIANA@GMAIL.COM |
|        31 | ADRIANA@GMAIL.COM |
+-----------+-------------------+

/* PARA UMA CAMPANHA DE PRODUTOS DE BELLEZA, O COMERCIAL SOLICITOU UM 
RELATORIO COM O NOME, EMAIL E TELEFONE CELULAR
DAS MULHERES QUE MORAM NO ESTADO DE SAO PAULO VOCÊ TERÁ QUE 
PASSA A QUERY PARA GERAR O RELATORIO PARA O PROGRAMADOR*/

SELECT C.NOME, C.EMAIL, T.TIPO, T.NUMERO, E.ESTADO
FROM CLIENTE C 
INNER JOIN TELEFONE T 
ON C.IDCLIENTE = T.ID_CLIENTE
INNER JOIN ENDERECO E 
ON C.IDCLIENTE = E.ID_CLIENTE;
+---------+-------------------+------+-----------+--------+
| NOME    | EMAIL             | TIPO | NUMERO    | ESTADO |
+---------+-------------------+------+-----------+--------+
| JORGE   | JORGE@IG.COM      | CEL  | 78458743  | ES     |
| JORGE   | JORGE@IG.COM      | RES  | 56576876  | ES     |
| JOAO    | JOAO@IG.COM       | COM  | 87866896  | RJ     |
| CARLOS  | CARLOS@IG.COM     | RES  | 54768899  | RJ     |
| JOAO    | JOAO@IG.COM       | CEL  | 99667587  | RJ     |
| ANA     | ANA@IG.COM        | CEL  | 78989765  | SP     |
| ANA     | ANA@IG.COM        | CEL  | 99766676  | SP     |
| JOAO    | JOAO@IG.COM       | COM  | 66687899  | RJ     |
| JORGE   | JORGE@IG.COM      | RES  | 89986668  | ES     |
| CARLOS  | CARLOS@IG.COM     | CEL  | 88687909  | RJ     |
| FLAVIO  | FLAVIO@IG.COM     | RES  | 68976565  | MG     |
| FLAVIO  | FLAVIO@IG.COM     | CEL  | 996556675 | MG     |
| GEOVANA | NULL              | CEL  | 33567765  | RJ     |
| GEOVANA | NULL              | CEL  | 88668786  | RJ     |
| GEOVANA | NULL              | COM  | 88965676  | RJ     |
| KARLA   | KARLA@GMAIL.COM   | COM  | 89966809  | RJ     |
| DANIELE | DANIELE@IG.COM    | COM  | 88679978  | ES     |
| EDUARDO | NULL              | CEL  | 99655768  | PR     |
| ANTONIO | ANTONIO@IG.COM    | COM  | 89955665  | SP     |
| ANTONIO | ANTONIO@UOL.COM   | CEL  | 77455786  | PR     |
| ELAINE  | ELAINE@GLOBO.COM  | RES  | 55689654  | SP     |
| CARMEM  | CARMEM@IG.COM     | RES  | 89766554  | RJ     |
| CARMEM  | CARMEM@IG.COM     | RES  | 77755785  | RJ     |
| ADRIANA | ADRIANA@GMAIL.COM | RES  | 44522578  | RJ     |
| ADRIANA | ADRIANA@GMAIL.COM | COM  | 88965679  | RJ     |
| JOICE   | JOICE@GMAIL.COM   | CEL  | 88965679  | RJ     |
+---------+-------------------+------+-----------+--------+

SELECT C.NOME, C.EMAIL, T.TIPO, T.NUMERO, E.ESTADO
FROM CLIENTE C 
INNER JOIN TELEFONE T 
ON C.IDCLIENTE = T.ID_CLIENTE
INNER JOIN ENDERECO E 
ON C.IDCLIENTE = E.ID_CLIENTE
WHERE C.SEXO = 'F';
+---------+-------------------+------+----------+--------+
| NOME    | EMAIL             | TIPO | NUMERO   | ESTADO |
+---------+-------------------+------+----------+--------+
| ANA     | ANA@IG.COM        | CEL  | 78989765 | SP     |
| ANA     | ANA@IG.COM        | CEL  | 99766676 | SP     |
| GEOVANA | NULL              | CEL  | 33567765 | RJ     |
| GEOVANA | NULL              | CEL  | 88668786 | RJ     |
| GEOVANA | NULL              | COM  | 88965676 | RJ     |
| KARLA   | KARLA@GMAIL.COM   | COM  | 89966809 | RJ     |
| DANIELE | DANIELE@IG.COM    | COM  | 88679978 | ES     |
| ELAINE  | ELAINE@GLOBO.COM  | RES  | 55689654 | SP     |
| CARMEM  | CARMEM@IG.COM     | RES  | 89766554 | RJ     |
| CARMEM  | CARMEM@IG.COM     | RES  | 77755785 | RJ     |
| ADRIANA | ADRIANA@GMAIL.COM | RES  | 44522578 | RJ     |
| ADRIANA | ADRIANA@GMAIL.COM | COM  | 88965679 | RJ     |
| JOICE   | JOICE@GMAIL.COM   | CEL  | 88965679 | RJ     |
+---------+-------------------+------+----------+--------+

SELECT C.NOME, C.EMAIL,T.NUMERO, E.ESTADO
FROM CLIENTE C 
INNER JOIN TELEFONE T 
ON C.IDCLIENTE = T.ID_CLIENTE
INNER JOIN ENDERECO E 
ON C.IDCLIENTE = E.ID_CLIENTE
WHERE C.SEXO = 'F' AND E.ESTADO = 'SP' AND T.TIPO = 'CEL';
+------+------------+------+----------+--------+
| NOME | EMAIL      | TIPO | NUMERO   | ESTADO |
+------+------------+------+----------+--------+
| ANA  | ANA@IG.COM | CEL  | 78989765 | SP     |
| ANA  | ANA@IG.COM | CEL  | 99766676 | SP     |
+------+------------+------+----------+--------+

SELECT C.NOME, C.EMAIL,T.NUMERO AS CELULAR
FROM CLIENTE C 
INNER JOIN TELEFONE T 
ON C.IDCLIENTE = T.ID_CLIENTE
INNER JOIN ENDERECO E 
ON C.IDCLIENTE = E.ID_CLIENTE
WHERE C.SEXO = 'F' AND E.ESTADO = 'SP' AND T.TIPO = 'CEL';
+------+------------+----------+
| NOME | EMAIL      | CELULAR  |
+------+------------+----------+
| ANA  | ANA@IG.COM | 78989765 |
| ANA  | ANA@IG.COM | 99766676 |
+------+------------+----------+

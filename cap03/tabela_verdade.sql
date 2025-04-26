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


/*FILTRANDO VALORES NULOS*/


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


SELECT NOME, SEXO, ENDERECO
FROM CLIENTE
WHERE SEXO = 'F';
+--------+------+------------------------------------------------+
| NOME   | SEXO | ENDERECO                                       |
+--------+------+------------------------------------------------+
| CELIA  | F    | RIACHUELO - CENTRO - RIO DE JANEIRO - RJ       |
| ANA    | F    | PRES. ANTONIO CARLOS - CENTRO - SAO PAULO - SP |
| CARLA  | F    | SAMUEL SILVA - CENTRO - BELO HORIZONTE - MG    |
| LILIAN | F    | SENADOR SOARES - TIJUCA - RIO DE JANEIRO - RJ  |
+--------+------+------------------------------------------------+


SELECT NOME, SEXO, ENDERECO
FROM CLIENTE
WHERE EMAIL = NULL;
Empty set (0.01 sec)


SELECT NOME, SEXO, ENDERECO
FROM CLIENTE
WHERE EMAIL IS NULL;
+--------+------+-----------------------------------------------+
| NOME   | SEXO | ENDERECO                                      |
+--------+------+-----------------------------------------------+
| JORGE  | M    | OSCAR CURY - BOM RETIRO - PATOS DE MINAS - MG |
| LILIAN | F    | SENADOR SOARES - TIJUCA - RIO DE JANEIRO - RJ |
+--------+------+-----------------------------------------------+

SELECT NOME, SEXO, ENDERECO
FROM CLIENTE
WHERE EMAIL IS NOT NULL;
+-------+------+------------------------------------------------+
| NOME  | SEXO | ENDERECO                                       |
+-------+------+------------------------------------------------+
| JOAO  | M    | MAIA LACERDA - ESTACIO - RIO DE JANEIRO - RJ   |
| CELIA | F    | RIACHUELO - CENTRO - RIO DE JANEIRO - RJ       |
| ANA   | F    | PRES. ANTONIO CARLOS - CENTRO - SAO PAULO - SP |
| CARLA | F    | SAMUEL SILVA - CENTRO - BELO HORIZONTE - MG    |
+-------+------+------------------------------------------------+

/* ISN OU INS NOT NULL */

/* 
A cláusula WHERE
Introdução à Cláusula WHERE no SQL
A cláusula WHERE é uma parte essencial da linguagem SQL (Structured Query Language), que é amplamente utilizada para gerenciar e manipular dados em bancos de dados relacionais. Ela permite filtrar registros e selecionar apenas aqueles que atendem a certas condições. Vamos explorar essa cláusula de maneira simples e clara.

O que é a Cláusula WHERE?
A cláusula WHERE é usada em uma instrução SQL para especificar condições que devem ser atendidas pelos registros que você deseja selecionar, atualizar ou excluir. Pense nela como um filtro que ajuda a encontrar exatamente os dados que você está procurando dentro de uma tabela.

Estrutura Básica
A estrutura básica de uma consulta SQL usando a cláusula WHERE é a seguinte:

sql
SELECT coluna1, coluna2, ...
FROM nome_da_tabela
WHERE condição;
Componentes:
SELECT: Especifica as colunas que você deseja ver nos resultados.

FROM: Indica a tabela onde os dados estão armazenados.

WHERE: Define a condição que os registros devem satisfazer para serem incluídos nos resultados.

Exemplos Práticos
1. Selecionar Registros Específicos
Imagine que você tem uma tabela chamada Clientes com as colunas Nome e Idade. Se quisermos encontrar todos os clientes com mais de 30 anos, usaríamos:

sql
SELECT Nome, Idade
FROM Clientes
WHERE Idade > 30;
2. Combinações de Condições
Você pode usar operadores lógicos como AND e OR para combinar múltiplas condições. Por exemplo, para encontrar clientes que têm mais de 30 anos e moram na cidade de "São Paulo":

sql
SELECT Nome, Idade, Cidade
FROM Clientes
WHERE Idade > 30 AND Cidade = 'São Paulo';
3. Filtragem com Operadores de Comparação
A cláusula WHERE suporta diversos operadores de comparação para definir condições:

= : Igual a

<> ou != : Diferente de

> : Maior que

< : Menor que

>= : Maior ou igual a

<= : Menor ou igual a

4. Uso de LIKE para Correspondência de Padrões
Para buscar padrões em texto, o operador LIKE é muito útil. Por exemplo, para encontrar todos os clientes cujos nomes começam com "Jo":

sql
SELECT Nome
FROM Clientes
WHERE Nome LIKE 'Jo%';
O símbolo % é um caractere curinga que representa qualquer sequência de caracteres.

Conclusão
A cláusula WHERE é uma ferramenta poderosa no SQL que permite realizar consultas eficientes e precisas. Com ela, você pode filtrar dados de acordo com suas necessidades, tornando a manipulação de grandes volumes de informação mais gerenciável e direcionada.

Ao aprender a usar a cláusula WHERE, você estará um passo mais próximo de dominar a manipulação de dados em SQL. Continue explorando e praticando com diferentes condições e operadores para se familiarizar ainda mais com suas capacidades.

Se tiver mais dúvidas ou quiser aprofundar seu conhecimento, estou aqui para ajudar!




*/

/*CLAUSULA UPDATE - ATUALIZAR REGISROS */

SHOW DATABASES;

USE PROJETO;

SELECT NOME, EMAIL 
FROM CLIENTE;
+--------+---------------------+
| NOME   | EMAIL               |
+--------+---------------------+
| JOAO   | JOAO@)GMAIL.COM     |
| CELIA  | CELIA@)GMAIL.COM    |
| JORGE  | NULL                |
| ANA    | ANA@GLOBO.COM       |
| CARLA  | CARLA@TERATI.COM.BR |
| LILIAN | NULL                |
+--------+---------------------+


UPDATE CLIENTE
SET EMAIL = 'LILIAN@HOTMAIL.COM';
/*USANDO O UPDATE DIRETO SEM CRITERIO, MUDA TODOS ELEMENTOS
DA TABELA EMAIL DOS OBJETOS -  ISSO É UM ERRO */

+--------+--------------------+
| NOME   | EMAIL              |
+--------+--------------------+
| JOAO   | LILIAN@HOTMAIL.COM |
| CELIA  | LILIAN@HOTMAIL.COM |
| JORGE  | LILIAN@HOTMAIL.COM |
| ANA    | LILIAN@HOTMAIL.COM |
| CARLA  | LILIAN@HOTMAIL.COM |
| LILIAN | LILIAN@HOTMAIL.COM |
+--------+--------------------+

/* PARA USAR O UPDATE DE FORMA CORRETA, DEVE ESPERCIFICA
O LOCAL ONDE SE DESEJA FAZER A ATUALIZAR DA TUPLA, PARA USAR O WHERE
PARA DETERMINAR QUAL TUPLA DESEJA FAZER ATUALIZAÇÃO*/;

SELECT * FROM CLIENTE
WHERE NOME = 'LILIAN';
+--------+------+--------------------+-----------+-----------+-----------------------------------------------+
| NOME   | SEXO | EMAIL              | CPF       | TELEFONE  | ENDERECO                                      |
+--------+------+--------------------+-----------+-----------+-----------------------------------------------+
| LILIAN | F    | LILIAN@HOTMAIL.COM | 887777485 | 947785696 | SENADOR SOARES - TIJUCA - RIO DE JANEIRO - RJ |
+--------+------+--------------------+-----------+-----------+-----------------------------------------------+

SELECT * FROM CLIENTE
WHERE NOME = 'JOAO';
+------+------+--------------------+-----------+----------+----------------------------------------------+
| NOME | SEXO | EMAIL              | CPF       | TELEFONE | ENDERECO                                     |
+------+------+--------------------+-----------+----------+----------------------------------------------+
| JOAO | M    | LILIAN@HOTMAIL.COM | 988638273 | 22923110 | MAIA LACERDA - ESTACIO - RIO DE JANEIRO - RJ |
+------+------+--------------------+-----------+----------+----------------------------------------------+

UPDATE CLIENTE
SET EMAIL = 'JOAO@IG.COM'
WHERE NOME = 'JOAO';

SELECT * FROM CLIENTE
WHERE NOME = 'JOAO';
+------+------+-------------+-----------+----------+----------------------------------------------+
| NOME | SEXO | EMAIL       | CPF       | TELEFONE | ENDERECO                                     |
+------+------+-------------+-----------+----------+----------------------------------------------+
| JOAO | M    | JOAO@IG.COM | 988638273 | 22923110 | MAIA LACERDA - ESTACIO - RIO DE JANEIRO - RJ |
+------+------+-------------+-----------+----------+----------------------------------------------+

UPDATE CLIENTE
SET EMAIL = 'JORGE@IG.COM'
WHERE NOME = 'JORGE';

SELECT * FROM CLIENTE
WHERE NOME = 'JORGE';
+-------+------+--------------+-----------+----------+-----------------------------------------------+
| NOME  | SEXO | EMAIL        | CPF       | TELEFONE | ENDERECO                                      |
+-------+------+--------------+-----------+----------+-----------------------------------------------+
| JORGE | M    | JORGE@IG.COM | 885755896 | 58748895 | OSCAR CURY - BOM RETIRO - PATOS DE MINAS - MG |
+-------+------+--------------+-----------+----------+-----------------------------------------------+

SELECT * FROM CLIENTE
WHERE NOME = 'CELIA';
+-------+------+--------------------+-----------+----------+------------------------------------------+
| CELIA | F    | LILIAN@HOTMAIL.COM | 541521456 | 25078869 | RIACHUELO - CENTRO - RIO DE JANEIRO - RJ |
+-------+------+--------------------+-----------+----------+------------------------------------------+

UPDATE CLIENTE
SET EMAIL = 'CELIA@GMAIL.COM'
WHERE NOME = 'CELIA';

SELECT * FROM CLIENTE
WHERE NOME = 'CELIA';
+-------+------+-----------------+-----------+----------+------------------------------------------+
| NOME  | SEXO | EMAIL           | CPF       | TELEFONE | ENDERECO                                 |
+-------+------+-----------------+-----------+----------+------------------------------------------+
| CELIA | F    | CELIA@GMAIL.COM | 541521456 | 25078869 | RIACHUELO - CENTRO - RIO DE JANEIRO - RJ |
+-------+------+-----------------+-----------+----------+------------------------------------------+

SELECT * FROM CLIENTE
WHERE NOME = 'ANA';
+------+------+--------------------+----------+-----------+------------------------------------------------+
| NOME | SEXO | EMAIL              | CPF      | TELEFONE  | ENDERECO                                       |
+------+------+--------------------+----------+-----------+------------------------------------------------+
| ANA  | F    | LILIAN@HOTMAIL.COM | 85548962 | 548556985 | PRES. ANTONIO CARLOS - CENTRO - SAO PAULO - SP |
+------+------+--------------------+----------+-----------+------------------------------------------------+

UPDATE CLIENTE
SET EMAIL = 'ANA@GMAIL.COM'
WHERE NOME = 'ANA';

SELECT * FROM CLIENTE
WHERE NOME = 'ANA';
+------+------+---------------+----------+-----------+------------------------------------------------+
| NOME | SEXO | EMAIL         | CPF      | TELEFONE  | ENDERECO                                       |
+------+------+---------------+----------+-----------+------------------------------------------------+
| ANA  | F    | ANA@GMAIL.COM | 85548962 | 548556985 | PRES. ANTONIO CARLOS - CENTRO - SAO PAULO - SP |
+------+------+---------------+----------+-----------+------------------------------------------------+

SELECT * FROM CLIENTE
WHERE NOME = 'CARLA';
+-------+------+--------------------+---------+----------+---------------------------------------------+
| NOME  | SEXO | EMAIL              | CPF     | TELEFONE | ENDERECO                                    |
+-------+------+--------------------+---------+----------+---------------------------------------------+
| CARLA | F    | LILIAN@HOTMAIL.COM | 7745828 | 66587458 | SAMUEL SILVA - CENTRO - BELO HORIZONTE - MG |
+-------+------+--------------------+---------+----------+---------------------------------------------+

UPDATE CLIENTE
SET EMAIL = 'CARLA@GMAIL.COM'
WHERE NOME = 'CARLA';

SELECT * FROM CLIENTE
WHERE NOME = 'CARLA';
+-------+------+-----------------+---------+----------+---------------------------------------------+
| NOME  | SEXO | EMAIL           | CPF     | TELEFONE | ENDERECO                                    |
+-------+------+-----------------+---------+----------+---------------------------------------------+
| CARLA | F    | CARLA@GMAIL.COM | 7745828 | 66587458 | SAMUEL SILVA - CENTRO - BELO HORIZONTE - MG |
+-------+------+-----------------+---------+----------+---------------------------------------------+

SELECT NOME, EMAIL
FROM CLIENTE;
+--------+--------------------+
| NOME   | EMAIL              |
+--------+--------------------+
| JOAO   | JOAO@IG.COM        |
| CELIA  | CELIA@GMAIL.COM    |
| JORGE  | JORGE@IG.COM       |
| ANA    | ANA@GMAIL.COM      |
| CARLA  | CARLA@GMAIL.COM    |
| LILIAN | LILIAN@HOTMAIL.COM |
+--------+--------------------+


/*
Mais sobre o UPDATE
Introdução à Instrução UPDATE no SQL
A instrução UPDATE é uma das ferramentas básicas do SQL (Structured Query Language) e é usada para modificar dados existentes em uma tabela de banco de dados. Com ela, você pode alterar valores em uma ou mais linhas, conforme necessário. Vamos entender como funciona essa instrução de forma prática e acessível.

O que é a Instrução UPDATE?
A instrução UPDATE permite alterar dados já existentes em uma tabela. É como editar informações em um documento: você pode corrigir erros, atualizar valores ou fazer ajustes conforme necessário.

Estrutura Básica
A estrutura básica de uma instrução UPDATE é a seguinte:

sql
UPDATE nome_da_tabela
SET coluna1 = valor1, coluna2 = valor2, ...
WHERE condição;
Componentes:
UPDATE: Indica a tabela que contém os dados a serem modificados.

SET: Especifica as colunas e os novos valores que você deseja definir.

WHERE: (Opcional, mas recomendado) Define as condições que determinam quais registros serão atualizados. Sem uma cláusula WHERE, todas as linhas da tabela serão atualizadas.

Exemplos Práticos
1. Atualizar um Único Registro
Imagine que você tem uma tabela chamada Funcionarios com as colunas Nome, Cargo e Salario. Se quisermos aumentar o salário de um funcionário específico, podemos usar:

sql
UPDATE Funcionarios
SET Salario = 5500
WHERE Nome = 'Maria Silva';
2. Atualizar Vários Registros
Você pode atualizar múltiplos registros que atendam a uma certa condição. Por exemplo, se quisermos aumentar o salário de todos os funcionários que são "Analistas":

sql
UPDATE Funcionarios
SET Salario = Salario * 1.10
WHERE Cargo = 'Analista';
3. Atualizar Sem Cláusula WHERE (Com Cuidado)
Se não for usada uma cláusula WHERE, todos os registros da tabela serão atualizados. Por exemplo:

sql
UPDATE Funcionarios
SET Cargo = 'Funcionário';
Importante: Usar UPDATE sem WHERE pode causar alterações em massa indesejadas, então deve ser feito com extremo cuidado.

Considerações de Segurança
Backup de Dados: Antes de executar atualizações grandes, é sempre uma boa prática fazer backup dos dados para evitar perdas acidentais.

Testar Antes: Teste suas consultas em um ambiente controlado ou utilizando transações para garantir que o resultado seja o esperado.

Conclusão
A instrução UPDATE é essencial para manter os dados de um banco de dados precisos e atualizados. Entender como utilizá-la corretamente é fundamental para a gestão eficaz de dados. Com prática, você ficará mais confiante em sua capacidade de modificar dados de maneira segura e eficiente.

*/

/*CLAUSULA DELETE - CUIDADO COM O USO DO DELETE, ELE DEVE SER 
USADO JUNTO COM WHERE. SEM USO SO WHERE TODA A TABELA SERÁ APAGADA
É SEMPRE BOM USAR O COMMIT E ROLLBACK PARA RECUPERAR TABELAS*/

DELETE FROM CLIENTE
WHERE NOME = 'ANA';

SELECT NOME, EMAIL
FROM CLIENTE;
+--------+--------------------+
| NOME   | EMAIL              |
+--------+--------------------+
| JOAO   | JOAO@IG.COM        |
| CELIA  | CELIA@GMAIL.COM    |
| JORGE  | JORGE@IG.COM       |
| CARLA  | CARLA@GMAIL.COM    |
| LILIAN | LILIAN@HOTMAIL.COM |
+--------+--------------------+

INSERT INTO CLIENTE VALUES('CARLA','F',
'C.LOPEZ@UOL.COM',45123678,'1234567889',
'RUA COPPER LEAF - WIILIANBURG - KITCHEENER');

SELECT * FROM CLIENTE;
+--------+------+--------------------+-----------+------------+-----------------------------------------------+
| NOME   | SEXO | EMAIL              | CPF       | TELEFONE   | ENDERECO                                      |
+--------+------+--------------------+-----------+------------+-----------------------------------------------+
| JOAO   | M    | JOAO@IG.COM        | 988638273 | 22923110   | MAIA LACERDA - ESTACIO - RIO DE JANEIRO - RJ  |
| CELIA  | F    | CELIA@GMAIL.COM    | 541521456 | 25078869   | RIACHUELO - CENTRO - RIO DE JANEIRO - RJ      |
| JORGE  | M    | JORGE@IG.COM       | 885755896 | 58748895   | OSCAR CURY - BOM RETIRO - PATOS DE MINAS - MG |
| CARLA  | F    | CARLA@GMAIL.COM    |   7745828 | 66587458   | SAMUEL SILVA - CENTRO - BELO HORIZONTE - MG   |
| LILIAN | F    | LILIAN@HOTMAIL.COM | 887777485 | 947785696  | SENADOR SOARES - TIJUCA - RIO DE JANEIRO - RJ |
| CARLA  | F    | C.LOPEZ@UOL.COM    |  45123678 | 1234567889 | RUA COPPER LEAF - WIILIANBURG - KITCHEENER    |
+--------+------+--------------------+-----------+------------+-----------------------------------------------+

DELETE FROM CLIENTE
WHERE NOME = 'CARLA'
AND EMAIL = 'CARLA@GMAIL.COM';

+--------+------+--------------------+-----------+------------+-----------------------------------------------+
| NOME   | SEXO | EMAIL              | CPF       | TELEFONE   | ENDERECO                                      |
+--------+------+--------------------+-----------+------------+-----------------------------------------------+
| JOAO   | M    | JOAO@IG.COM        | 988638273 | 22923110   | MAIA LACERDA - ESTACIO - RIO DE JANEIRO - RJ  |
| CELIA  | F    | CELIA@GMAIL.COM    | 541521456 | 25078869   | RIACHUELO - CENTRO - RIO DE JANEIRO - RJ      |
| JORGE  | M    | JORGE@IG.COM       | 885755896 | 58748895   | OSCAR CURY - BOM RETIRO - PATOS DE MINAS - MG |
| LILIAN | F    | LILIAN@HOTMAIL.COM | 887777485 | 947785696  | SENADOR SOARES - TIJUCA - RIO DE JANEIRO - RJ |
| CARLA  | F    | C.LOPEZ@UOL.COM    |  45123678 | 1234567889 | RUA COPPER LEAF - WIILIANBURG - KITCHEENER    |
+--------+------+--------------------+-----------+------------+-----------------------------------------------+

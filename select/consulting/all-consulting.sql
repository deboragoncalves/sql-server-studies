-- Consultas select

USE book_store;
GO

-- Opera��es

-- SUM

SELECT SUM(ID) AS SOMA_ID FROM client;

-- MAX

SELECT SUM(ID) AS SOMA_ID, MIN(YEAR(DATE_CREATED)) AS MIN_ANO_CRIACAO, MAX(MONTH(DATE_CREATED)) AS MAX_MES_CRIACAO FROM book;

-- MIN

SELECT SUM(ID) AS SOMA_ID, MIN(YEAR(DATE_CREATED)) AS MIN_ANO_CRIACAO FROM book;

-- AVG

SELECT SUM(ID) AS SOMA_ID, MIN(YEAR(DATE_CREATED)) AS MIN_ANO_CRIACAO, MAX(MONTH(DATE_CREATED)) AS MAX_MES_CRIACAO, AVG(DAY(DATE_CREATED)) AS MEDIA_DIAS_CRIACAO FROM book;

--  ORDER BY: ordem alfab�tica ASC

SELECT * FROM client ORDER BY NAME;

--  ORDER BY: ordem alfab�tica DESC

SELECT * FROM client ORDER BY NAME DESC;

-- ORDER BY: 2 fields. Ordena primeiro o primeiro comando do ORDER BY, depois o segundo.

SELECT * FROM book ORDER BY name DESC, YEAR(DATE_CREATED);

-- COUNT usando WHERE

SELECT SUM(ID) AS SOMA_ID, MIN(YEAR(DATE_CREATED)) AS MIN_ANO_CRIACAO, MAX(MONTH(DATE_CREATED)) AS MAX_MES_CRIACAO, AVG(DAY(DATE_CREATED)) AS MEDIA_DIAS_CRIACAO, COUNT(ID) AS NUMERO_LIVROS FROM book WHERE ID > 6;

-- DISTINCT

SELECT DISTINCT [CPF], [NAME], [PHONE_NUMBER], [FIRST_BUY] FROM client;

-- DISTINCT com WHERE, usando alias

SELECT DISTINCT [CPF] AS REGISTRO, [NAME] AS NOME FROM client WHERE FIRST_BUY = 0;

-- GROUP BY: agrupar dados com o mesmo CPF

SELECT CPF, NAME FROM client GROUP BY CPF, NAME;

-- GROUP BY: agrupar dados com o mesmo CPF usando HAVING

SELECT CPF, NAME FROM client GROUP BY CPF, NAME HAVING NAME < 'Felipe';

-- GROUP BY: agrupar dados de acordo com o maior ID

SELECT CPF, MAX(ID) AS [BIGGER ID] FROM client GROUP BY CPF;

-- Subqueries: select dentro do from. op��o de usar o having

-- SELECT CPF, NAME FROM client GROUP BY CPF, NAME HAVING NAME < 'Felipe';

SELECT CPF, NAME, PHONE_NUMBER FROM client WHERE NAME IN (SELECT NAME FROM client WHERE NAME > 'Felipe') GROUP BY CPF, NAME, PHONE_NUMBER;

-- TOP, DISTINCT junto com WHERE

SELECT DISTINCT TOP 3 [CPF] AS IDENTIFICADOR, [NAME] AS NOME, [PHONE_NUMBER] AS TELEFONE FROM client WHERE NAME = 'Eduardo';

-- CASE/WHEN: WHEN - condicional, utilizando >, <, =... THEN - valor que ir� adicionado na nova coluna
-- ELSE: n�o satisfaz as condi��es do when

SELECT NAME, CATEGORY,
CASE	
	WHEN CATEGORY = 'Fic��o' OR NAME = 'Harry Potter' THEN '13 a 17 anos' 
	WHEN CATEGORY = 'Jornalismo' THEN 'Acima de 18 anos'
	WHEN CATEGORY = 'Biografia' THEN 'Acima de 18 anos'
	ELSE 'N�o possui classifica��o' END
FROM book;

-- CASE WHEN junto com GROUP BY, classificando os estados

SELECT CPF, PHONE_NUMBER, NAME,
CASE
	WHEN PHONE_NUMBER LIKE '%(11)%' THEN 'SP'
	WHEN PHONE_NUMBER LIKE '%(21)%' THEN 'RJ'
	WHEN PHONE_NUMBER LIKE '%(47)%' THEN 'SC'
	ELSE 'Estado n�o possui classifica��o' END
FROM client
GROUP BY CPF, PHONE_NUMBER, NAME
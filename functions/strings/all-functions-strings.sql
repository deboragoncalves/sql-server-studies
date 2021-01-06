-- Fun��es - String
USE book_store;
GO

-- LTRIM

SELECT LTRIM('     Teste') AS LEFT_TRIM;

-- RTRIM: retira espa�os em branco � direita

SELECT RTRIM('Teste    ') AS RIGHT_TRIM;

-- LEFT: caracteres � esquerda da string

SELECT LEFT(NAME, 4) AS FIRSTS_CARACTERES_NAME FROM book WHERE ID = 6;

-- RIGHT

SELECT RIGHT(CATEGORY, 3) AS LASTS_CARACTERES_CATEGORY FROM book WHERE ID = 6;

-- CONCAT

SELECT CONCAT('Nome: ', NAME, ' - CPF ', CPF) AS [NOME E CPF] FROM client WHERE ID = 2;

-- CONCATENAR USANDO +

SELECT NAME + ' - ' + CPF AS [NOME E CPF] FROM client WHERE ID = 2;

-- SUBSTRING: parametro inicial, numero de caracteres. inclui espa�os em branco

SELECT SUBSTRING(NAME, 4, 4) AS [PEDA�O DO NOME] FROM book WHERE ID = 6;

-- LEN

SELECT LEN(CATEGORY) AS [TAMANHO STRING CATEGORIA] FROM book WHERE ID = 6;

-- UPPER

SELECT UPPER(CATEGORY) AS [MA�USCULAS] FROM book WHERE ID = 6;

-- LOWER

SELECT LOWER(NAME) AS [MIN�SCULAS] FROM book WHERE ID = 6;

-- REPLACE: primeiro argumento: string, segundo: substring ou string que ser� substuida, terceiro: nova string

SELECT REPLACE(CATEGORY, 'Fic��o', 'Fic��o Infanto Juvenil') AS [NOVA CATEGORIA] FROM book WHERE ID = 6;
-- MAX

USE book_store;
GO

SELECT SUM(ID) AS SOMA_ID, MIN(YEAR(DATE_CREATED)) AS MIN_ANO_CRIACAO, MAX(MONTH(DATE_CREATED)) AS MAX_MES_CRIACAO FROM book;
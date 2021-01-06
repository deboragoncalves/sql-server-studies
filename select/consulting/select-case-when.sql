-- CASE/WHEN: WHEN - condicional, utilizando >, <, =... THEN - valor que ir� adicionado na nova coluna
-- ELSE: n�o satisfaz as condi��es do when

USE book_store;
GO

SELECT NAME, CATEGORY,
CASE	
	WHEN CATEGORY = 'Fic��o' OR NAME = 'Harry Potter' THEN '13 a 17 anos' 
	WHEN CATEGORY = 'Jornalismo' THEN 'Acima de 18 anos'
	WHEN CATEGORY = 'Biografia' THEN 'Acima de 18 anos'
	ELSE 'N�o possui classifica��o' END
FROM book;
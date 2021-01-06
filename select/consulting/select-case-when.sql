-- CASE/WHEN: WHEN - condicional, utilizando >, <, =... THEN - valor que irá adicionado na nova coluna
-- ELSE: não satisfaz as condições do when

USE book_store;
GO

SELECT NAME, CATEGORY,
CASE	
	WHEN CATEGORY = 'Ficção' OR NAME = 'Harry Potter' THEN '13 a 17 anos' 
	WHEN CATEGORY = 'Jornalismo' THEN 'Acima de 18 anos'
	WHEN CATEGORY = 'Biografia' THEN 'Acima de 18 anos'
	ELSE 'Não possui classificação' END
FROM book;
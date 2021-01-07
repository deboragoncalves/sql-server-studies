-- Relatório: estados dos clientes que compraram o mesmo livro

-- View com Inner join: name livro, id livro
-- Case/when: número de DDD e sigla estado

CREATE OR ALTER VIEW vw_same_books_client AS (SELECT B.NAME AS NAME_BOOK, B.ID AS ID_BOOK, C.ID_BOOK AS BOOK_ID, C.NAME AS NAME_CLIENT, C.PHONE_NUMBER AS PHONE_CLIENT FROM book B INNER JOIN client C ON B.ID = C.ID_BOOK);

SELECT * FROM vw_same_books_client;

SELECT NAME_BOOK, ID_BOOK, NAME_CLIENT, PHONE_CLIENT,
CASE
	WHEN PHONE_CLIENT LIKE '%(21)%' THEN 'RJ'
	WHEN PHONE_CLIENT LIKE '%(11)%' THEN 'SP'
	WHEN PHONE_CLIENT LIKE '%(47)%' THEN 'SC'
	ELSE 'Estado não encontrado' END
FROM vw_same_books_client;

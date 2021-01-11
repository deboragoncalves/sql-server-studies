-- Relat�rio 1: estados dos clientes que compraram o mesmo livro

-- View com Inner join: name livro, id livro
-- Case/when: n�mero DDD e sigla estado

CREATE OR ALTER VIEW vw_same_books_client AS (SELECT B.NAME AS NAME_BOOK, B.ID AS ID_BOOK, C.ID_BOOK AS BOOK_ID, C.NAME AS NAME_CLIENT, C.PHONE_NUMBER AS PHONE_CLIENT FROM book B INNER JOIN client C ON B.ID = C.ID_BOOK);

SELECT * FROM vw_same_books_client;

SELECT NAME_BOOK, ID_BOOK, NAME_CLIENT, PHONE_CLIENT,
CASE
	WHEN PHONE_CLIENT LIKE '%(21)%' THEN 'RJ'
	WHEN PHONE_CLIENT LIKE '%(11)%' THEN 'SP'
	WHEN PHONE_CLIENT LIKE '%(47)%' THEN 'SC'
	ELSE 'Estado n�o encontrado' END
FROM vw_same_books_client;

-- Relat�rio 2: vendas totais por m�s

-- Nome do livro e id (book)
-- View: inner join pelo id. exibir ids, quantidade e pre�o livro. no where inserir datas.
-- View: inner join pelo id. exibir nome livro, faturado e sum.

CREATE OR ALTER VIEW vw_prices_quantities_books AS (SELECT BP.ID_BOOK AS BOOK_IDENTITY, BP.PRICE, BS.ID_BOOK, BS.QUANTITY FROM books_prices BP INNER JOIN books_sales BS ON BP.ID_BOOK = BS.ID_BOOK WHERE YEAR(BS.DATE_SALE) = 2020 AND MONTH(BS.DATE_SALE) = 12);

CREATE OR ALTER VIEW [VM_TOTAL_SALES_MONTH] AS (SELECT BOOK.[NAME], (VW_BOOK.[PRICE] * VW_BOOK.[QUANTITY]) AS [TOTAL_SALES_BOOK]
FROM [BOOK] INNER JOIN [VW_PRICES_QUANTITIES_BOOKS] VW_BOOK ON VW_BOOK.[ID_BOOK] = BOOK.[ID]);

SELECT * FROM [VW_PRICES_QUANTITIES_BOOKS];

SELECT [NAME], [TOTAL_SALES_BOOK] FROM [VM_TOTAL_SALES_MONTH] GROUP BY [NAME], [TOTAL_SALES_BOOK];

-- Relat�rio 3: vendas por livro e por m�s

CREATE OR ALTER VIEW [VW_TOTAL_SALES_MONTH_BOOK] AS (SELECT BOOK.[NAME], (VW_BOOK.[PRICE] * VW_BOOK.[QUANTITY]) AS [TOTAL_SALES_BOOK]
FROM [BOOK] INNER JOIN [VW_PRICES_QUANTITIES_BOOKS] VW_BOOK ON VW_BOOK.[ID_BOOK] = BOOK.[ID] WHERE BOOK.[ID] = 7);

SELECT * FROM [VW_TOTAL_SALES_MONTH_BOOK];

-- Relat�rio 4: vendas por cliente e por m�s

CREATE OR ALTER VIEW [VW_TOTAL_SALES_MONTH_CLIENT] AS (SELECT CLIENT.[NAME], (VW_BOOK.[PRICE] * VW_BOOK.[QUANTITY]) AS [TOTAL_SALES_CLIENT]
FROM [CLIENT] INNER JOIN [VW_PRICES_QUANTITIES_BOOKS] VW_BOOK ON VW_BOOK.[ID_BOOK] = CLIENT.[ID_BOOK]);

SELECT * FROM [VW_TOTAL_SALES_MONTH_CLIENT];








-- Relatório 1: estados dos clientes que compraram o mesmo livro

-- View com Inner join: name livro, id livro
-- Case/when: número DDD e sigla estado

CREATE OR ALTER VIEW vw_same_books_client AS (SELECT B.NAME AS NAME_BOOK, B.ID AS ID_BOOK, C.ID_BOOK AS BOOK_ID, C.NAME AS NAME_CLIENT, C.PHONE_NUMBER AS PHONE_CLIENT FROM book B INNER JOIN client C ON B.ID = C.ID_BOOK);

SELECT * FROM vw_same_books_client;

SELECT NAME_BOOK, ID_BOOK, NAME_CLIENT, PHONE_CLIENT,
CASE
	WHEN PHONE_CLIENT LIKE '%(21)%' THEN 'RJ'
	WHEN PHONE_CLIENT LIKE '%(11)%' THEN 'SP'
	WHEN PHONE_CLIENT LIKE '%(47)%' THEN 'SC'
	ELSE 'Estado não encontrado' END
FROM vw_same_books_client;

-- Relatório 2: vendas totais por mês

-- Nome do livro e id (book)
-- View: inner join pelo id. exibir ids, quantidade e preço livro. no where inserir datas.
-- View: inner join pelo id. exibir nome livro, faturado e sum.

CREATE OR ALTER VIEW vw_prices_quantities_books AS (SELECT BP.ID_BOOK AS BOOK_IDENTITY, BP.PRICE, BS.ID_BOOK, BS.QUANTITY FROM books_prices BP INNER JOIN books_sales BS ON BP.ID_BOOK = BS.ID_BOOK WHERE YEAR(BS.DATE_SALE) = 2020 AND MONTH(BS.DATE_SALE) = 10);

CREATE OR ALTER VIEW vw_total_sales_month AS (SELECT BOOK.NAME, (VW_BOOK.PRICE * VW_BOOK.QUANTITY) AS TOTAL_SALES_BOOK
FROM book INNER JOIN vw_prices_quantities_books VW_BOOK ON VW_BOOK.ID_BOOK = BOOK.ID);

SELECT * FROM vw_prices_quantities_books;

SELECT * FROM vw_total_sales_month;

-- Relatório 3: vendas por livro e por mês

CREATE OR ALTER VIEW vw_total_sales_month_book AS (SELECT BOOK.NAME, (VW_BOOK.PRICE * VW_BOOK.QUANTITY) AS TOTAL_SALES_BOOK
FROM book INNER JOIN vw_prices_quantities_books VW_BOOK ON VW_BOOK.ID_BOOK = BOOK.ID WHERE BOOK.ID = 7);

SELECT * FROM vw_total_sales_month_book;

-- Relatório 4: vendas por cliente e por mês

CREATE OR ALTER VIEW vw_total_sales_month_client AS (SELECT CLIENT.NAME, (VW_BOOK.PRICE * VW_BOOK.QUANTITY) AS TOTAL_SALES_BOOK
FROM client INNER JOIN vw_prices_quantities_books VW_BOOK ON VW_BOOK.ID_BOOK = CLIENT.ID_BOOK);

SELECT * FROM vw_total_sales_month_client;








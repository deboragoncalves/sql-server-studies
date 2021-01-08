USE [book_store];
GO

UPDATE book SET category = 'Aventura', name = 'O chamado de Cuco' WHERE id = 1;

UPDATE book SET category = 'Ficção' WHERE ID = 6 OR ID = 7;

-- Update usando substring: string, inicio, fim.

UPDATE book SET category = 'Jornalismo' WHERE SUBSTRING(category, 1, 3) = 'Rep';

UPDATE new_books_prices SET PRICE = 40.50 WHERE ID_BOOK = 6;

-- Atualizar tabela de preços com base na tabela de novos preços: inner join

SELECT BP.ID_BOOK, BP.PRICE, NEW_BP.ID_BOOK, NEW_BP.PRICE FROM BOOKS_PRICES BP INNER JOIN NEW_BOOKS_PRICES NEW_BP ON BP.ID_BOOK = NEW_BP.ID_BOOK;

-- Update from inner join

UPDATE BP SET BP.PRICE = NEW_BP.PRICE FROM BOOKS_PRICES BP INNER JOIN NEW_BOOKS_PRICES NEW_BP ON BP.ID_BOOK = NEW_BP.ID_BOOK;

-- Update usando merge. into/using: tabela destino, tabela origem. on: condição. matched: condição true.

UPDATE new_books_prices SET PRICE = 41.25 WHERE ID_BOOK = 6;

MERGE INTO BOOKS_PRICES BP USING NEW_BOOKS_PRICES NEW_BP ON BP.ID_BOOK = NEW_BP.ID_BOOK WHEN MATCHED THEN UPDATE SET BP.PRICE = NEW_BP.PRICE;
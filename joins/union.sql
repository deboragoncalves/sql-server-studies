-- UNION: une duas consultas, caso os campos do select sejam do mesmo tipo. aplica o distinct

USE book_store;
GO

SELECT NAME FROM BOOK UNION SELECT NAME FROM CLIENT;

-- UNION ALL: não aplica distinct

SELECT ID, NAME FROM BOOK UNION ALL SELECT ID, NAME FROM CLIENT;

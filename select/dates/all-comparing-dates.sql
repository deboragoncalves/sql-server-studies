-- Comparação datas

USE book_store;
GO

-- data, maior

SELECT * FROM book WHERE date_created > '2001-10-01';

-- dia, maior

SELECT * FROM book WHERE DAY(date_created) > 20;

-- mes, maior

SELECT * FROM book WHERE MONTH(date_created) > 2;

-- ano, maior

SELECT * FROM book WHERE YEAR(date_created) > 2000;
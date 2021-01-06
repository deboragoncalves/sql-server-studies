-- Fun��o convert

USE book_store;
GO

-- Converter datas: 1� argumento: tipo que se deseja converter. 2�: atual dado a ser convertido. 3�: opcional. inteiro que indica o formato da data.
-- 101: DD/MM/YYYY

SELECT CONVERT(VARCHAR, DATE_CREATED, 101) AS [DATE TO VARCHAR] FROM book WHERE ID = 6; 

-- Converter inteiro para varchar e concatenar

SELECT CONCAT('The book was created in ', CONVERT(VARCHAR, YEAR(DATE_CREATED))) AS [YEAR - BOOK CREATED] FROM book WHERE ID = 6;

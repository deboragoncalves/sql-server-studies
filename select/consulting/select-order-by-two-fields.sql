-- ORDER BY: 2 fields. Ordena primeiro o primeiro comando do ORDER BY, depois o segundo.

USE book_store;
GO

SELECT * FROM book ORDER BY name DESC, YEAR(DATE_CREATED);
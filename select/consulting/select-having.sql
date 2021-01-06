-- GROUP BY: agrupar dados com o mesmo CPF usando HAVING

USE book_store;
GO

SELECT CPF, NAME FROM client GROUP BY CPF, NAME HAVING NAME < 'Felipe';
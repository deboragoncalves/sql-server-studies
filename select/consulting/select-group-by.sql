-- GROUP BY: agrupar dados com o mesmo CPF

USE book_store;
GO

SELECT CPF, NAME FROM client GROUP BY CPF, NAME;
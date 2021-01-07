-- Consultas select

USE book_store;
GO

-- Campos

SELECT id, cpf, name, phone_number, first_buy FROM client;

-- Todos os campos

SELECT * FROM client;

SELECT * from books_prices;

-- Form

SELECT * FROM book_store.dbo.client;

-- WHERE

SELECT * FROM client WHERE first_buy = 0;

-- Alias

SELECT CPF AS REGISTER, PHONE_NUMBER AS CONTACT FROM book_store.dbo.client;

-- IN: está contido, similar ao =, se for um único valor. usar parênteses

-- SELECT * FROM book;

SELECT * FROM book WHERE NAME IN ('Harry Potter') OR AUTHOR IN ('Boni');
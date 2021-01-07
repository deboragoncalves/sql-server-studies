-- VIEW. Alter = replace

USE book_store;
GO

CREATE OR ALTER VIEW vw_book AS SELECT NAME, AUTHOR FROM book;

SELECT * FROM vw_book;

-- VIEW usando WHERE

CREATE OR ALTER VIEW vw_client AS SELECT NAME, CPF, PHONE_NUMBER FROM client WHERE NAME LIKE '%Silva';

SELECT * FROM vw_client;
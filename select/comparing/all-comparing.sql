-- Comparação

USE book_store;
GO

-- diferente 

SELECT * FROM client WHERE first_buy <> 1;

-- e

-- SELECT * FROM book;

SELECT * FROM book WHERE AUTHOR = 'JK Rowlling' AND YEAR(DATE_CREATED) > 2000; 

-- ou

SELECT * FROM book WHERE AUTHOR = 'JK Rowlling' OR YEAR(DATE_CREATED) > 2010;

-- not or

SELECT * FROM book WHERE NOT (AUTHOR = 'JK Rowlling' OR YEAR(DATE_CREATED) > 2010);

-- maior ou igual. inteiro

SELECT * FROM client WHERE id >= 0;

-- maior que. String

SELECT * FROM client WHERE name > 'Bianca';

-- menor que. String

SELECT * FROM client WHERE name < 'Pedro';

-- between

-- SELECT * FROM book WHERE YEAR(DATE_CREATED) >= 2000 AND YEAR(DATE_CREATED) <= 2010;

SELECT * FROM book WHERE NAME = 'Jornal Nacional' OR YEAR(DATE_CREATED) BETWEEN 2000 AND 2010;

-- like. string

SELECT * FROM book WHERE name LIKE 'Harry%' AND DAY(DATE_CREATED) > 30;

-- like junto com ou 

SELECT * FROM book WHERE name LIKE '%Potter' OR DAY(DATE_CREATED) > 31;
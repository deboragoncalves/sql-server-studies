-- INNER JOIN

SELECT BOOK.ID, BOOK.NAME, BOOK.AUTHOR, CLIENT.ID, CLIENT.CPF, CLIENT.NAME, CLIENT.PHONE_NUMBER FROM BOOK INNER JOIN CLIENT ON CLIENT.ID = BOOK.ID;

-- INNER JOIN usando COUNT e GROUP BY

SELECT BOOK.ID, BOOK.NAME, BOOK.AUTHOR, CLIENT.ID, CLIENT.CPF, CLIENT.NAME, CLIENT.PHONE_NUMBER, COUNT(*) AS [NUMBER ELEMENTS IN COMMON] FROM BOOK INNER JOIN CLIENT ON CLIENT.ID = BOOK.ID GROUP BY BOOK.ID, BOOK.NAME, BOOK.AUTHOR, CLIENT.ID, CLIENT.CPF, CLIENT.NAME, CLIENT.PHONE_NUMBER;

-- LEFT JOIN: todos os que est�o na tabela da esquerda (book). se h� correspondente na tabela da direita (ids iguais), exibe; caso contr�rio, null.

SELECT BOOK.ID, BOOK.NAME, BOOK.AUTHOR, CLIENT.ID, CLIENT.CPF, CLIENT.NAME, CLIENT.PHONE_NUMBER FROM BOOK LEFT JOIN CLIENT ON CLIENT.ID = BOOK.ID;

-- RIGHT JOIN usando ALIAS

SELECT B.ID, B.NAME, B.AUTHOR, C.ID, C.CPF, C.NAME, C.PHONE_NUMBER FROM BOOK B RIGHT JOIN CLIENT C ON C.ID = B.ID;

-- FULL JOIN: todos os registros, exibindo null caso n�o corresponda � condi��o.

SELECT B.ID, B.NAME, B.AUTHOR, C.ID, C.CPF, C.NAME, C.PHONE_NUMBER FROM BOOK B FULL JOIN CLIENT C ON C.ID = B.ID;

-- CROSS JOIN: cruzamento/matriz.

SELECT B.ID, B.NAME, B.AUTHOR, C.ID, C.CPF, C.NAME, C.PHONE_NUMBER FROM BOOK B CROSS JOIN CLIENT C;

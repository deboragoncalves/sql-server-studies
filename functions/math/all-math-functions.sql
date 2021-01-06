-- Fun��es matem�ticas

USE book_store;
GO

--	Ceiling: arrendondar para cima. Argumentos devem estar com separa��o de . 

SELECT CEILING (13.50);

-- Floor: arrendondar para baixo. Separa��o por ponto (.)

SELECT FLOOR (12.75);

-- Rand: n�mero aleat�rio. Argumento opcional

SELECT RAND();

-- Round: arrendonda o n�mero com as casas decimais determinadas, deixando as casas antes existentes com valor 0. 

SELECT ROUND (13.45783, 3);
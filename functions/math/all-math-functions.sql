-- Funções matemáticas

USE book_store;
GO

--	Ceiling: arrendondar para cima. Argumentos devem estar com separação de . 

SELECT CEILING (13.50);

-- Floor: arrendondar para baixo. Separação por ponto (.)

SELECT FLOOR (12.75);

-- Rand: número aleatório. Argumento opcional

SELECT RAND();

-- Round: arrendonda o número com as casas decimais determinadas, deixando as casas antes existentes com valor 0. 

SELECT ROUND (13.45783, 3);
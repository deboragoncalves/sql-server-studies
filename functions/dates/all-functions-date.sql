-- Fun��es - Data

USE book_store;
GO

-- SYS DATE TIME: data e hora atual

SELECT SYSDATETIME();

-- SYS DATETIME OFF SET: data e hora atual + fuso hor�rio

SELECT SYSDATETIMEOFFSET();

-- Current Time Stamp: retorna data e hora atual, no formato YYYY-MM-DD HH:MM:SS.MS

SELECT CURRENT_TIMESTAMP;

-- Get Date: retorna a data e hora atual, igual ao Current Time Stamp

SELECT GETDATE();

-- Date Nane: retorna em formato de string uma parte da data (dia, m�s, ano...). primeiro argumento � o que se deseja retornar

SELECT DATENAME(month, DATE_CREATED) AS [MONTH] FROM book WHERE ID = 6;

-- Date Part: retorna em formato de n�mero uma parte da data (dia, m�s, ano...). primeiro argumento � o que se deseja retornar

SELECT DATEPART(month, DATE_CREATED) AS [MONTH AS NUMBER] FROM book WHERE ID = 6;

-- Day: retorna o dia

SELECT DAY(DATE_CREATED) AS [DAY AS NUMBER] FROM book WHERE ID = 6;

SELECT MONTH(DATE_CREATED) AS [MONTH AS NUMBER] FROM book WHERE ID = 6;

SELECT YEAR(DATE_CREATED) AS [YEAR] FROM book WHERE ID = 6;

-- Date from Parts: recebo n�meros (ano, mes dia) e retorna a data: YYYY-MM-DD. Se for n�mero inv�lido (m�s 13), retorna um erro. 

SELECT DATEFROMPARTS(2020, 12, 02);

-- Date Diff: diferen�a entre datas: 1� argumento: formato do retorno (mes, dias, anos...), 2�: data inicial - pode usar o Date from parts e 3�: data final

SELECT DATEDIFF(year, DATE_CREATED, GETDATE()) AS [DATE DIFFERENCE] FROM book WHERE ID = 6;

-- Date Add: adiciona na data: 1� argumento: o que se deseja adicionar (dias, meses, anos...). 2�: quantidade a ser adicionada. 3�: data. Retorna no formato GETDATE: YYYY-MM-DD HH:MM:SS.MS

SELECT DATEADD(year, 19, DATE_CREATED) AS [ADD_YEARS_DATE_CREATED] FROM book WHERE ID = 6;;

--	Is Date: verifica se o argumento pode ser usado como data. Se sim, retorna 1. Se n�o (mes 13, dia 32, etc), retorna 0. Argumento: YYYY-DD-MM.

SELECT ISDATE('2021-13-13');


--	BETWEEN

-- SELECT * FROM book WHERE YEAR(DATE_CREATED) >= 2000 AND YEAR(DATE_CREATED) <= 2010;

SELECT * FROM book WHERE NAME = 'Jornal Nacional' OR YEAR(DATE_CREATED) BETWEEN 2000 AND 2010;
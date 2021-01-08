USE [book_store];
GO

UPDATE [BOOK] SET [CATEGORY] = 'Aventura', [NAME] = 'O chamado de Cuco' WHERE [ID] = 1;

UPDATE [BOOK] SET [CATEGORY] = 'Fic��o' WHERE [ID] IN (6, 7);

-- Update usando substring: string, inicio, fim.

UPDATE [BOOK] SET [CATEGORY] = 'Jornalismo' WHERE SUBSTRING([CATEGORY], 1, 3) = 'Rep';

UPDATE [NEW_BOOKS_PRICES] SET [PRICE] = 40.50 WHERE [ID_BOOK] = 6;

-- Atualizar tabela de pre�os com base na tabela de novos pre�os: inner join

SELECT BP.[ID_BOOK], BP.[PRICE], NEW_BP.[ID_BOOK], NEW_BP.[PRICE] FROM [BOOKS_PRICES] BP INNER JOIN [NEW_BOOKS_PRICES] NEW_BP ON BP.[ID_BOOK] = NEW_BP.[ID_BOOK];

-- Update from inner join

UPDATE BP SET BP.[PRICE] = NEW_BP.[PRICE] FROM [BOOKS_PRICES] BP INNER JOIN [NEW_BOOKS_PRICES] NEW_BP ON BP.[ID_BOOK] = NEW_BP.[ID_BOOK];

-- Update usando merge. into/using: tabela destino, tabela origem. on: condi��o. matched: condi��o true.

UPDATE [NEW_BOOKS_PRICES] SET [PRICE] = 41.25 WHERE [ID_BOOK] = 6;

MERGE INTO [BOOKS_PRICES] BP USING [NEW_BOOKS_PRICES] NEW_BP ON BP.[ID_BOOK] = NEW_BP.[ID_BOOK] WHEN MATCHED THEN UPDATE SET BP.[PRICE] = NEW_BP.[PRICE];
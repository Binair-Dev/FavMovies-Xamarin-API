CREATE TABLE [dbo].[PlayedMovie]
(
	[Id] INT IDENTITY NOT NULL, 
    [PersonId] INT NOT NULL, 
    [Title] VARCHAR(50) NOT NULL, 
    CONSTRAINT [PK_PlayedMovie] PRIMARY KEY ([Id]) 
)

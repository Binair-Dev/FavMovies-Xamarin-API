CREATE TABLE [dbo].[RealisedMovie]
(
	[Id] INT IDENTITY NOT NULL, 
    [PersonId] INT NOT NULL, 
    [Title] VARCHAR(50) NOT NULL, 
    CONSTRAINT [PK_RealisedMovie] PRIMARY KEY ([Id]) 
)

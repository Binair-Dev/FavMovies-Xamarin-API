CREATE TABLE [dbo].[ScenarisedMovie]
(
	[Id] INT IDENTITY NOT NULL, 
    [PersonId] INT NOT NULL, 
    [Title] VARCHAR(50) NOT NULL, 
    CONSTRAINT [PK_ScenarisedMovie] PRIMARY KEY ([Id]) 
)

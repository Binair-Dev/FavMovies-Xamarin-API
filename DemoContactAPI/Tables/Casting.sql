CREATE TABLE [dbo].[Casting]
(
	[Id] INT IDENTITY NOT NULL, 
	[MovieId] INT NOT NULL, 
	[PersonId] INT NOT NULL, 
	[Role] VARCHAR(50) NOT NULL, 
    CONSTRAINT [PK_Casting] PRIMARY KEY ([Id]), 
    CONSTRAINT [FK_Casting_Movie] FOREIGN KEY ([MovieId]) REFERENCES [Movie]([Id]), 
    CONSTRAINT [FK_Casting_Person] FOREIGN KEY ([PersonId]) REFERENCES [Person]([Id])
)

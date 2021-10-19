CREATE TABLE [dbo].[Movie]
(
	[Id] INT IDENTITY NOT NULL, 
	[Nom] VARCHAR(50) NOT NULL,
	[ReleaseYear] INT NOT NULL,
	[Synopsis] TEXT NOT NULL,
	[PosterUrl] TEXT NOT NULL,
	[RealisatorId] int NOT NULL,
	[ScenaristId] int NOT NULL,
	[CategoryId] int NOT NULL,
	[PersonalComment] TEXT NOT NULL,
    CONSTRAINT [PK_Movie] PRIMARY KEY ([Id]), 
    CONSTRAINT [FK_Movie_Realisator] FOREIGN KEY ([RealisatorId]) REFERENCES [Person]([Id]),
    CONSTRAINT [FK_Movie_Scenarist] FOREIGN KEY ([ScenaristId]) REFERENCES [Person]([Id]),
    CONSTRAINT [FK_Movie_Category] FOREIGN KEY ([CategoryId]) REFERENCES [Category]([Id]),
)

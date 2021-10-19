CREATE TABLE [dbo].[Person]
(
	[Id] INT IDENTITY NOT NULL, 
	[LastName] VARCHAR(50) NOT NULL, 
	[FirstName] VARCHAR(50) NOT NULL, 
	[PictureUrl] TEXT NOT NULL, 
    CONSTRAINT [PK_Person] PRIMARY KEY ([Id]) 
)

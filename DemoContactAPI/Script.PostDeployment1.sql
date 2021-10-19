/*Désactivation des contrainte*/
ALTER TABLE Movie NOCHECK CONSTRAINT ALL
ALTER TABLE Category NOCHECK CONSTRAINT ALL
ALTER TABLE Person NOCHECK CONSTRAINT ALL
ALTER TABLE Casting NOCHECK CONSTRAINT ALL


INSERT INTO Category (Nom) VALUES ('Super-héros')

/*Réal*/
INSERT INTO Person (LastName, FirstName, PictureUrl) VALUES ('Fleischer', 'Ruben', 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5d/Ruben_Fleischer_by_Gage_Skidmore.jpg/220px-Ruben_Fleischer_by_Gage_Skidmore.jpg')

/*Scenariste*/
INSERT INTO Person (LastName, FirstName, PictureUrl) VALUES ('Pinkner', 'Jeff', 'https://static.wikia.nocookie.net/dark-universe-universal-monsters/images/c/c2/Jeff_Pinkner.jpg/revision/latest?cb=20191212103536')

/*Acteurs*/
INSERT INTO Person (LastName, FirstName, PictureUrl) VALUES ('Hardy', 'Tom', 'https://static1.puretrend.com/articles/3/11/39/53/@/1317375-meme-avec-les-cheveux-mal-gomines-580x0-3.jpg')
INSERT INTO Person (LastName, FirstName, PictureUrl) VALUES ('Williams', 'Michelle', 'https://fr.web.img3.acsta.net/pictures/18/10/15/12/03/5225344.jpg')
INSERT INTO Person (LastName, FirstName, PictureUrl) VALUES ('Ahmed', 'Riz', 'https://fr.web.img6.acsta.net/pictures/19/09/09/13/36/1799929.jpg')
INSERT INTO Person (LastName, FirstName, PictureUrl) VALUES ('Slate', 'Jenny', 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/01/Jenny_Slate_Obvious_Child_Premiere_2014_%28cropped%29.jpg/1200px-Jenny_Slate_Obvious_Child_Premiere_2014_%28cropped%29.jpg')

/*Movie*/
INSERT INTO Movie
(Nom, ReleaseYear,Synopsis, PosterUrl, RealisatorId, ScenaristId,CategoryId, PersonalComment) VALUES (
'Venom', 
2018, 
'Des symbiotes débarquent sur la Terre, parmi eux, Venom, qui va s’allier avec Eddie Brock. De son côté, un puissant scientifique tente de faire évoluer l’humanité avec les symbiotes, le duo d’anti‐héros va devoir tout faire pour l’arrêter !', 
'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/vVusHIRlyyFVS42XnqZso2wGKr.jpg', 
1,
2,
1,
'Film incroyable')

/*Castings*/
INSERT INTO Casting (MovieId, PersonId, [Role]) VALUES (1, 3, 'Venom')
INSERT INTO Casting (MovieId, PersonId, [Role]) VALUES (1, 4, 'Anne Weying')
INSERT INTO Casting (MovieId, PersonId, [Role]) VALUES (1, 5, 'Carlton Drake, Riot, Riot')
INSERT INTO Casting (MovieId, PersonId, [Role]) VALUES (1, 6, 'Dora Skirth')



INSERT INTO Category (Nom) VALUES ('Science-Fiction')

/*Réal*/
INSERT INTO Person (LastName, FirstName, PictureUrl) VALUES ('Trevorrow', 'Colin', 'https://fr.web.img4.acsta.net/pictures/21/03/17/16/07/1930760.jpg')

/*Scenariste*/
INSERT INTO Person (LastName, FirstName, PictureUrl) VALUES ('Carmichael', 'Emily', 'https://static.wikia.nocookie.net/jurassicpark/images/a/aa/Emily_Carmichael.png/revision/latest?cb=20200921175939&path-prefix=fr')

/*Acteurs*/
INSERT INTO Person (LastName, FirstName, PictureUrl) VALUES ('Pratt', 'Chris', 'https://static.wikia.nocookie.net/jurassicpark/images/9/9b/Chris_Pratt.jpg/revision/latest/top-crop/width/360/height/450?cb=20210415122532&path-prefix=fr')
INSERT INTO Person (LastName, FirstName, PictureUrl) VALUES ('Dallas Howard', 'Bryce', 'https://fr.web.img6.acsta.net/pictures/19/09/09/13/35/2436508.jpg')
INSERT INTO Person (LastName, FirstName, PictureUrl) VALUES ('Neill', 'Sam', 'https://www.programme-tv.net/imgre/fit/https.3A.2F.2Fprd2-tel-epg-img.2Es3-eu-west-1.2Eamazonaws.2Ecom.2FproviderPerson.2F75cd3647fb7e2103.2Ejpeg/300x300/quality/80/sam-neill.jpeg')
INSERT INTO Person (LastName, FirstName, PictureUrl) VALUES ('Goldblum', 'Jeff ', 'https://static.wikia.nocookie.net/jurassicpark/images/c/c8/Jeff_Goldblum.png/revision/latest?cb=20200322112641&path-prefix=fr')

/*Movie*/
INSERT INTO Movie
(Nom, ReleaseYear,Synopsis, PosterUrl, RealisatorId, ScenaristId,CategoryId, PersonalComment) VALUES (
'Jurrasic World 2', 
2018, 
'Cela fait maintenant trois ans que les dinosaures se sont échappés de leurs enclos et ont détruit le parc à thème et complexe de luxe Jurassic World. Isla Nublar a été abandonnée par les humains alors que les dinosaures survivants sont livrés à eux-mêmes dans la jungle.', 
'https://fr.web.img4.acsta.net/pictures/18/04/18/08/52/3826877.jpg', 
7,
8,
2,
'Film incroyable')

/*Castings*/
INSERT INTO Casting (MovieId, PersonId, [Role]) VALUES (2, 9, 'Owen Grady')
INSERT INTO Casting (MovieId, PersonId, [Role]) VALUES (2, 10, 'Claire Dearing')
INSERT INTO Casting (MovieId, PersonId, [Role]) VALUES (2, 11, 'Pr Alan Grant')
INSERT INTO Casting (MovieId, PersonId, [Role]) VALUES (2, 12, 'Ian Malcolm')

INSERT INTO RealisedMovie (PersonId, Title) VALUES (1, 'Bienvenue à Zombieland')
INSERT INTO RealisedMovie (PersonId, Title) VALUES (1, '30 minutes maximum')
INSERT INTO RealisedMovie (PersonId, Title) VALUES (1, 'Gangster Squad')
INSERT INTO RealisedMovie (PersonId, Title) VALUES (1, 'Venom')
INSERT INTO RealisedMovie (PersonId, Title) VALUES (1, 'Retour à Zombieland')
INSERT INTO RealisedMovie (PersonId, Title) VALUES (1, 'Uncharted')

INSERT INTO ScenarisedMovie(PersonId, Title) VALUES (2, 'Alias')
INSERT INTO ScenarisedMovie (PersonId, Title) VALUES (2, 'Lost : Les Disparus')
INSERT INTO ScenarisedMovie (PersonId, Title) VALUES (2, 'Fringe')
INSERT INTO ScenarisedMovie (PersonId, Title) VALUES (2, 'The Amazing Spider-Man')
INSERT INTO ScenarisedMovie (PersonId, Title) VALUES (2, 'Zoo')
INSERT INTO ScenarisedMovie (PersonId, Title) VALUES (2, 'La Cinquième Vague')
INSERT INTO ScenarisedMovie (PersonId, Title) VALUES (2, 'La Tour sombre')
INSERT INTO ScenarisedMovie (PersonId, Title) VALUES (2, 'Jumanji: Bienvenue dans la jungle')
INSERT INTO ScenarisedMovie (PersonId, Title) VALUES (2, 'Venom')
INSERT INTO ScenarisedMovie (PersonId, Title) VALUES (2, 'Cowboy Bebop')

INSERT INTO PlayedMovie(PersonId, Title) VALUES (3, 'Mad Max: Fury Road')
INSERT INTO PlayedMovie(PersonId, Title) VALUES (3, 'London Road')
INSERT INTO PlayedMovie(PersonId, Title) VALUES (3, 'Legend')
INSERT INTO PlayedMovie(PersonId, Title) VALUES (3, 'The Revenant')
INSERT INTO PlayedMovie(PersonId, Title) VALUES (3, 'Dunkerque')
INSERT INTO PlayedMovie(PersonId, Title) VALUES (3, 'Venom')
INSERT INTO PlayedMovie(PersonId, Title) VALUES (3, 'Capone')
INSERT INTO PlayedMovie(PersonId, Title) VALUES (3, 'Venom: Let There Be Carnage')
INSERT INTO PlayedMovie(PersonId, Title) VALUES (3, 'Spider-Man: No Way Home')
INSERT INTO PlayedMovie(PersonId, Title) VALUES (3, 'Havoc')

INSERT INTO PlayedMovie(PersonId, Title) VALUES (4, 'Suite française')
INSERT INTO PlayedMovie(PersonId, Title) VALUES (4, 'Manchester by the Sea')
INSERT INTO PlayedMovie(PersonId, Title) VALUES (4, 'Certaines Femmes')
INSERT INTO PlayedMovie(PersonId, Title) VALUES (4, 'Le Musée des Merveilles')
INSERT INTO PlayedMovie(PersonId, Title) VALUES (4, 'The Greatest Showman')
INSERT INTO PlayedMovie(PersonId, Title) VALUES (4, 'Tout l argent du monde')
INSERT INTO PlayedMovie(PersonId, Title) VALUES (4, 'Venom')
INSERT INTO PlayedMovie(PersonId, Title) VALUES (4, 'I Feel Pretty')
INSERT INTO PlayedMovie(PersonId, Title) VALUES (4, 'After the Wedding')
INSERT INTO PlayedMovie(PersonId, Title) VALUES (4, 'Venom: Let There Be Carnage')
INSERT INTO PlayedMovie(PersonId, Title) VALUES (4, 'The Fabelmans')

INSERT INTO PlayedMovie(PersonId, Title) VALUES (5, 'Night Call')
INSERT INTO PlayedMovie(PersonId, Title) VALUES (5, 'Jason Bourne')
INSERT INTO PlayedMovie(PersonId, Title) VALUES (5, 'Una')
INSERT INTO PlayedMovie(PersonId, Title) VALUES (5, 'City of Tiny Lights')
INSERT INTO PlayedMovie(PersonId, Title) VALUES (5, 'Rogue One: A Star Wars Story')
INSERT INTO PlayedMovie(PersonId, Title) VALUES (5, 'Les Frères Sisters')
INSERT INTO PlayedMovie(PersonId, Title) VALUES (5, 'Venom')
INSERT INTO PlayedMovie(PersonId, Title) VALUES (5, 'Sound of Metal')
INSERT INTO PlayedMovie(PersonId, Title) VALUES (5, 'Mogul Mowgli')

INSERT INTO PlayedMovie(PersonId, Title) VALUES (6, 'Digging for Fire')
INSERT INTO PlayedMovie(PersonId, Title) VALUES (6, 'Joshy')
INSERT INTO PlayedMovie(PersonId, Title) VALUES (6, 'My Blind Brother')
INSERT INTO PlayedMovie(PersonId, Title) VALUES (6, 'Brain on Fire')
INSERT INTO PlayedMovie(PersonId, Title) VALUES (6, 'Landline')
INSERT INTO PlayedMovie(PersonId, Title) VALUES (6, 'The Polka King')
INSERT INTO PlayedMovie(PersonId, Title) VALUES (6, 'Mary')
INSERT INTO PlayedMovie(PersonId, Title) VALUES (6, 'Aardvark')
INSERT INTO PlayedMovie(PersonId, Title) VALUES (6, 'Hotel Artemis')
INSERT INTO PlayedMovie(PersonId, Title) VALUES (6, 'Venom')
INSERT INTO PlayedMovie(PersonId, Title) VALUES (6, 'The Sunlit Night')
INSERT INTO PlayedMovie(PersonId, Title) VALUES (6, 'On the Rocks')

INSERT INTO RealisedMovie(PersonId, Title) VALUES (7, 'Home Base')
INSERT INTO RealisedMovie(PersonId, Title) VALUES (7, 'Reality Show')
INSERT INTO RealisedMovie(PersonId, Title) VALUES (7, 'Gary: Under Crisis')
INSERT INTO RealisedMovie(PersonId, Title) VALUES (7, 'Safety Not Guaranteed')
INSERT INTO RealisedMovie(PersonId, Title) VALUES (7, 'Jurassic World')
INSERT INTO RealisedMovie(PersonId, Title) VALUES (7, 'The Book of Henry')
INSERT INTO RealisedMovie(PersonId, Title) VALUES (7, 'Battle at Big Rock')
INSERT INTO RealisedMovie(PersonId, Title) VALUES (7, 'Jurassic World : Le Monde d après')

INSERT INTO ScenarisedMovie(PersonId, Title) VALUES (7, 'Home Base')
INSERT INTO ScenarisedMovie(PersonId, Title) VALUES (7, 'Making Revolution')
INSERT INTO ScenarisedMovie(PersonId, Title) VALUES (7, 'Reality Show')
INSERT INTO ScenarisedMovie(PersonId, Title) VALUES (7, 'Gary: Under Crisis')
INSERT INTO ScenarisedMovie(PersonId, Title) VALUES (7, 'Jurassic World')
INSERT INTO ScenarisedMovie(PersonId, Title) VALUES (7, 'Jurassic World: Fallen Kingdom')
INSERT INTO ScenarisedMovie(PersonId, Title) VALUES (7, 'Star Wars, épisode IX : L Ascension de Skywalker')
INSERT INTO ScenarisedMovie(PersonId, Title) VALUES (7, 'Battle at Big Rock')
INSERT INTO ScenarisedMovie(PersonId, Title) VALUES (7, 'Jurassic World: Dominion')

INSERT INTO ScenarisedMovie(PersonId, Title) VALUES (8, 'Ledo and Ix Go to Town')
INSERT INTO ScenarisedMovie(PersonId, Title) VALUES (8, 'Ledo and Ix Battle Epically')
INSERT INTO ScenarisedMovie(PersonId, Title) VALUES (8, 'The Adventures of Ledo and Ix')
INSERT INTO ScenarisedMovie(PersonId, Title) VALUES (8, 'The Hunter and the Swan Discuss Their Meeting')
INSERT INTO ScenarisedMovie(PersonId, Title) VALUES (8, 'RPG OKC')
INSERT INTO ScenarisedMovie(PersonId, Title) VALUES (8, 'Stryka')
INSERT INTO ScenarisedMovie(PersonId, Title) VALUES (8, 'The Enchanted Forest')
INSERT INTO ScenarisedMovie(PersonId, Title) VALUES (8, 'Pacific Rim: Uprising')
INSERT INTO ScenarisedMovie(PersonId, Title) VALUES (8, 'Battle at Big Rock')
INSERT INTO ScenarisedMovie(PersonId, Title) VALUES (8, 'Jurassic World: Dominion')

INSERT INTO PlayedMovie(PersonId, Title) VALUES (9, 'Les Sept Mercenaires')
INSERT INTO PlayedMovie(PersonId, Title) VALUES (9, 'Passengers')
INSERT INTO PlayedMovie(PersonId, Title) VALUES (9, 'Les Gardiens de la Galaxie Vol. 2')
INSERT INTO PlayedMovie(PersonId, Title) VALUES (9, 'Avengers: Infinity War')
INSERT INTO PlayedMovie(PersonId, Title) VALUES (9, 'Jurassic World: Fallen Kingdom')
INSERT INTO PlayedMovie(PersonId, Title) VALUES (9, 'La Grande Aventure Lego 2')
INSERT INTO PlayedMovie(PersonId, Title) VALUES (9, 'The Kid')
INSERT INTO PlayedMovie(PersonId, Title) VALUES (9, 'Avengers : Endgame')
INSERT INTO PlayedMovie(PersonId, Title) VALUES (9, 'En avant')
INSERT INTO PlayedMovie(PersonId, Title) VALUES (9, 'The Tomorrow War')

INSERT INTO PlayedMovie(PersonId, Title) VALUES (10, 'La Couleur des sentiments')
INSERT INTO PlayedMovie(PersonId, Title) VALUES (10, '50/50')
INSERT INTO PlayedMovie(PersonId, Title) VALUES (10, 'Jurassic World')
INSERT INTO PlayedMovie(PersonId, Title) VALUES (10, 'Peter et Elliott le dragon')
INSERT INTO PlayedMovie(PersonId, Title) VALUES (10, 'Gold')
INSERT INTO PlayedMovie(PersonId, Title) VALUES (10, 'Jurassic World: Fallen Kingdom')
INSERT INTO PlayedMovie(PersonId, Title) VALUES (10, 'Rocketman')
INSERT INTO PlayedMovie(PersonId, Title) VALUES (10, 'L Incroyable Aventure de Bella')
INSERT INTO PlayedMovie(PersonId, Title) VALUES (10, 'Jurassic World : Le Monde d après')
INSERT INTO PlayedMovie(PersonId, Title) VALUES (10, 'Argylle')

INSERT INTO RealisedMovie(PersonId, Title) VALUES (10, 'Orchids')
INSERT INTO RealisedMovie(PersonId, Title) VALUES (10, 'When You Find Me')
INSERT INTO RealisedMovie(PersonId, Title) VALUES (10, 'Call Me Crazy: A Five Film')
INSERT INTO RealisedMovie(PersonId, Title) VALUES (10, 'The Originals')
INSERT INTO RealisedMovie(PersonId, Title) VALUES (10, 'The Mandalorian')

INSERT INTO ScenarisedMovie(PersonId, Title) VALUES (10, 'Restless de Gus Van Sant')

INSERT INTO PlayedMovie(PersonId, Title) VALUES (11, 'The Daughter')
INSERT INTO PlayedMovie(PersonId, Title) VALUES (11, 'DxM')
INSERT INTO PlayedMovie(PersonId, Title) VALUES (11, 'À la poursuite de Ricky Baker')
INSERT INTO PlayedMovie(PersonId, Title) VALUES (11, 'Thor : Ragnarok')
INSERT INTO PlayedMovie(PersonId, Title) VALUES (11, 'Sweet Country')
INSERT INTO PlayedMovie(PersonId, Title) VALUES (11, 'The Passenger')
INSERT INTO PlayedMovie(PersonId, Title) VALUES (11, 'Pierre Lapin')
INSERT INTO PlayedMovie(PersonId, Title) VALUES (11, 'Ride Like a Girl')
INSERT INTO PlayedMovie(PersonId, Title) VALUES (11, 'Blackbird')
INSERT INTO PlayedMovie(PersonId, Title) VALUES (11, 'Jurassic World : Le Monde d après')

INSERT INTO PlayedMovie(PersonId, Title) VALUES (12, 'Charlie Mortdecai')
INSERT INTO PlayedMovie(PersonId, Title) VALUES (12, 'Independence Day: Resurgence')
INSERT INTO PlayedMovie(PersonId, Title) VALUES (12, 'Les Gardiens de la Galaxie Vol. 2')
INSERT INTO PlayedMovie(PersonId, Title) VALUES (12, 'Thor : Ragnarok')
INSERT INTO PlayedMovie(PersonId, Title) VALUES (12, 'L Île aux chiens')
INSERT INTO PlayedMovie(PersonId, Title) VALUES (12, 'Jurassic World: Fallen Kingdom')
INSERT INTO PlayedMovie(PersonId, Title) VALUES (12, 'Hotel Artemis')
INSERT INTO PlayedMovie(PersonId, Title) VALUES (12, 'The Mountain : Une odyssée américaine')
INSERT INTO PlayedMovie(PersonId, Title) VALUES (12, 'Thor: Love and Thunder')
INSERT INTO PlayedMovie(PersonId, Title) VALUES (12, 'Jurassic World : Le Monde d après')

/*Réactivation des contrainte*/
ALTER TABLE Movie CHECK CONSTRAINT ALL
ALTER TABLE Category CHECK CONSTRAINT ALL
ALTER TABLE Person CHECK CONSTRAINT ALL
ALTER TABLE Casting CHECK CONSTRAINT ALL
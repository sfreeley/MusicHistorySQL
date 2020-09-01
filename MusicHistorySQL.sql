-- 1. Query all the entries in the Genre table
-- SELECT Label FROM Genre

-- 2. Query all the entries in the Artist table and order by the artist's name. HINT: use the ORDER BY keywords
-- SELECT ArtistName, YearEstablished FROM Artist ORDER BY ArtistName ASC

-- 3. Write a SELECT query that lists all the songs in the Song table and include the Artist name
-- SELECT Title, ArtistName FROM Song INNER JOIN Artist ON Song.ArtistId = Artist.Id

-- 4. Write a SELECT query that lists all the Artists that have a Pop Album
-- SELECT DISTINCT ArtistName
-- FROM Artist LEFT JOIN Album ON Artist.Id = Album.ArtistId
-- LEFT JOIN Genre ON Genre.Id = Album.GenreId WHERE Genre.Label = 'Pop'

-- 5. Write a SELECT query that lists all the Artists that have a Jazz or Rock Album
-- SELECT DISTINCT ArtistName
-- FROM Artist LEFT JOIN Album ON Artist.Id = Album.ArtistId
-- LEFT JOIN Genre ON Genre.Id = Album.GenreId WHERE Genre.Label = 'Jazz' OR Genre.Label = 'Rock'

-- 6. Write a SELECT statement that lists the Albums with no songs ??
-- SELECT Title
-- FROM Album WHERE AlbumLength IS NULL

-- 7. Using the INSERT statement, add one of your favorite artists to the Artist table. 
-- INSERT INTO Artist (ArtistName, YearEstablished) VALUES ('Nirvana', 1987)

-- 8. Using the INSERT statement, add one, or more, albums by your artist to the Album table.
-- INSERT INTO Album VALUES ('Nevermind', '1991', 999, 'DGC Records', 28, 2)

-- 9. Using the INSERT statement, add some songs that are on that album to the Song table.
-- INSERT INTO Song VALUES ('Smells Like Teen Spirit', 999, 'September 10, 1999', 2, 28, 23)

-- 10. Write a SELECT query that provides the song titles, album title, and artist name for all of the data you just entered in. Use the LEFT JOIN keyword sequence to connect the tables, and the WHERE keyword to filter the results to the album and artist you added.
-- query for album title, song title, and artist name from song table (that contains foreign key /AlbumId) 
-- LEFT JOIN (ie if Song table is empty, it will still include it even if Album table does not have a matching album to that song)
-- LEFT JOIN Album (which has the ArtistId FK) with Artist table ( which has ArtistName, which is a column/property we are looking for)

-- SELECT Album.Title, Song.Title, Artist.ArtistName
-- FROM Song LEFT JOIN Album ON Song.AlbumId = Album.Id
-- LEFT JOIN Artist ON Artist.Id = Album.ArtistId
-- WHERE Artist.ArtistName = 'Nirvana'

-- 11. Write a SELECT statement to display how many songs exist for each album. You'll need to use the COUNT() function and the GROUP BY keyword sequence.

-- 12. Write a SELECT statement to display how many songs exist for each artist. You'll need to use the COUNT() function and the GROUP BY keyword sequence.

-- 13. Write a SELECT statement to display how many songs exist for each genre. You'll need to use the COUNT() function and the GROUP BY keyword sequence.

-- 14. Write a SELECT query that lists the Artists that have put out records on more than one record label. Hint: When using GROUP BY instead of using a WHERE clause, use the HAVING keyword

-- 15. 


























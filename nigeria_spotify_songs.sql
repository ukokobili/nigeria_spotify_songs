--
-- What is the total number of albums released?
--
SELECT COUNT(ns.album) AS "Number of Album"
FROM nigerian_spotify_songs1 ns
--
-- A total number of 530 albums were released

--
-- Number of Albums released per year
--
SELECT ns.release_date AS "Release Date"
	   ,COUNT(ns.album) AS "Number of Album Per Year"
FROM nigerian_spotify_songs1 ns
GROUP BY ns.release_date
ORDER BY COUNT(ns.album) DESC
-- 
-- There were a total of 95 albums released in 2016 alone
-- I think more albums were also release from 1998 up till
-- 2011 because Nigeria music industry had evolved already
-- with the bigs names like, Style Plus, Paul Play, Tuface and many more.

--
-- Most popular songs  
--
SELECT ns.name AS "Song"
	  ,ns.artist AS "Artist"
	  ,ns.album AS "Album"
	  ,ns.artist_top_genre AS "Genre"
	  ,ns.release_date AS "Release Date"
	  ,ns.popularity AS "Popularity"
FROM nigerian_spotify_songs1 ns
WHERE ns.popularity >= 30
ORDER BY ns.popularity DESC
--
-- I'm not surprise at Burna Boy's "On the Low" it was a hit
-- Good to see a song from 2016 among the top 2 songs.
-- Burna Boy and WizKid seems to dominate the table, 
-- they are currently the best at the moment and remember both won the Grammy this year(2021)

--
-- Number of album released by each Artist
--
SELECT ns.artist AS "Artist"
	  ,COUNT(DISTINCT ns.album) AS "Number of Album"
FROM nigerian_spotify_songs1 ns
GROUP BY ns.artist
ORDER BY COUNT(ns.album) DESC
--
-- Interestingly, Davido seems to have released more albums
-- compared to other artists and you also have Tekno, Flavor,
-- Wizkid and P-Square. Various Artists would prolly be 
-- colabos or unnamed albums.

--
-- Which is the most danceable song?
--
SELECT ns.name AS "Song"
	  ,ns.artist AS "Artist"
	  ,ns.release_date AS "Release Date"
	  ,ns.danceability AS "Danceability"
FROM nigerian_spotify_songs1 ns
ORDER BY ns.danceability DESC
--
-- Drogba (Joanna) by Afro B is the the most danceable song

--
-- Which is the song most Acousticness?
--
SELECT ns.name AS "Song"
	  ,ns.artist AS "Artist"
	  ,ns.release_date AS "Release Date"
	  ,ns.acousticness AS "Acousticness"
FROM nigerian_spotify_songs1 ns
ORDER BY ns.acousticness DESC
--
-- Whoa! by AYLO is the song with the highest Acousticness
-- Note 1.0 represents high confidence the song is in terms
-- of Acousticness

--
-- Which song has the highest energy level?
--
SELECT ns.name AS "Song"
	  ,ns.artist AS "Artist"
	  ,ns.release_date AS "Release Date"
	  ,ns.energy AS "Energy"
FROM nigerian_spotify_songs1 ns
ORDER BY ns.energy DESC
--
-- Davido's Dami Duro is the song with the highest energy
-- The release date for this song is not 2020, it was 
-- released between 2011 - 2012

--
-- Which song is most Instrumentalness? Instrumentalness means
-- a song without vocal, the closer the value is to 1 the 
-- likely hood the song has no vocal
--
SELECT ns.name AS "Song"
	  ,ns.artist AS "Artist"
	  ,ns.release_date AS "Release Date"
	  ,ns.instrumentalness AS "Instrumentalness"
FROM nigerian_spotify_songs1 ns
ORDER BY ns.instrumentalness DESC
--
-- Wanted You by Odunsi (The Engine) is almost without vocals
-- I would have to listen to this song

--
-- Song with the highest value of Liveness. Livness in this context
-- detect presence of audience in the recording. The higher the values
-- the higher the probability the song was performed live.
--
SELECT ns.name AS "Song"
	  ,ns.artist AS "Artist"
	  ,ns.release_date AS "Release Date"
	  ,ns.liveness AS "Liveness"
FROM nigerian_spotify_songs1 ns
ORDER BY ns.liveness DESC
--
-- Olamide's Pepper Dem Gang song looks like it was performed live

--
-- Song with the highest value of Loudness. Loudness is measured in 
-- Decibels and it ranges from 0-1
--
SELECT ns.name AS "Song"
	  ,ns.artist AS "Artist"
	  ,ns.release_date AS "Release Date"
	  ,ns.loudness AS "Loudness"
FROM nigerian_spotify_songs1 ns
ORDER BY ns.loudness DESC
--
-- From our obversation the highest value 0.582 which is a little above average

--
-- The with the most Speechiness? Speechiness is the presence of spoken
-- words in the song. Values above 0.66 is considered to have more
-- more spoken words while values below 0.33 are considered songs 
-- with less spoken words 
--
SELECT ns.name AS "Song"
	  ,ns.artist AS "Artist"
	  ,ns.release_date AS "Release Date"
	  ,ns.speechiness AS "Speechiness"
FROM nigerian_spotify_songs1 ns
ORDER BY ns.speechiness DESC
-- Catch Cold by Olu Maintain seems to have a lot words in it.

--
-- The song with the highest Tempo? Tempo  is the pace or speed of
-- a given piece which is derived directly from the average bit
-- duration and it's measured in beat per minute(BPM)
--
SELECT ns.name AS "Song"
	  ,ns.artist AS "Artist"
	  ,ns.release_date AS "Release Date"
	  ,ns.tempo AS "Tempo"
FROM nigerian_spotify_songs1 ns
GROUP BY ns.name, ns.artist, ns.release_date, ns.tempo
ORDER BY ns.tempo DESC
--
-- Davido's Assurance has a very high tempo in this regard.
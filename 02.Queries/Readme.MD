Now it is time to perform more complex SQL queries and especially ``join`` queries to read data from multiple tables at the same time.

To be an expert in ``join`` queries, it is here: [http://www.w3schools.com/sql/sql_join.asp](http://www.w3schools.com/sql/sql_join.asp)


## To do 

From the Jukebox database:

1. Get all the tracks with the corresponding artist and album.
   Your output should be an array of arrays :
   ``["track name", "artist name", "album name"]``

	Tip: you have to use two ``join`` sql statements.
	
2. For each genre of music, find the number of tracks and the average song length (in minutes)

	Tip: you have to use a ``group by`` statement with aggregate 	functions ``count`` and ``avg``. 
	
	Example: 
	
	````
	Rock
	1297 songs
	4.7 minutes avg length
	````
	
3. Find the top 5 artists that made the most rocks songs.

	Tip: you have to use multiple ``join`` statements, an aggregate function ``count``, a ``group by``, a ``order by`` and a ``limit``statement.
	

	



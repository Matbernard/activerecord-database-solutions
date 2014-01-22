require 'sqlite3'

# opens the database
database_path = "db/jukebox.sqlite"
db = SQLite3::Database.new(database_path)

# 1. returns the list of tracks with their album and artist
q = "select t.name, b.title, a.name from Track t "
q += " inner join Album b on t.albumId = b.albumId "
q += " inner join Artist a on a.artistId = b.artistId "
tracks = db.execute(q)
#puts tracks[0,5]


# 2. For each genre of music, finds the number of tracks and the average song length (in minutes)
# your code here.
q = "select g.name, count(*), avg(t.milliseconds/1000/60) from Track t inner join Genre g on t.genreId = g.genreId "
q += "group by g.genreId order by count(*) DESC"
genres = db.execute(q)
puts genres


# 3. List the top 5 rock artists
# your code here.
sql = " SELECT a.name, count(t.trackId) FROM Track t inner join Album b on t.albumId = b.albumId "
sql += " inner join Artist a on a.artistId = b.artistId "
sql += " inner join Genre g on g.genreId = t.genreId "
sql += " where g.name == 'Rock'  group by a.name order by count(t.trackId) DESC limit 5"
top_artists = db.execute(sql)
puts top_artists
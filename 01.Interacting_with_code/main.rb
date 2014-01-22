require 'sqlite3'

# opens the database
database_path = "db/jukebox.sqlite"
db = SQLite3::Database.new(database_path)

def number_of_rows(db,table_name)
  # your code here
  query = "select count(*) from #{table_name}"
  return db.execute(query)[0][0]
end

puts "There are #{number_of_rows(db,"Artist")} artists"
puts "There are #{number_of_rows(db,"Track")} tracks"
puts "There are #{number_of_rows(db,"Album")} albums"
puts "There are #{number_of_rows(db,"Genre")} genres"
puts "There are #{number_of_rows(db,"MediaType")} media types"


# returns all the artists sorted by alphabetical order.
query = "select name from Artist order by name DESC"
artists = db.execute(query)
#puts artists

# returns all the love songs
query = "select name from Track where name like '%love%'"
love_songs = db.execute(query)
puts "There are #{love_songs.count} love songs"
#puts love_songs


# returns all the tracks that are longer than 5 minutes.
query = "select name from Track where milliseconds > 1000*60*5"
long_tracks = db.execute(query)
puts "There are #{long_tracks.count} long tracks"


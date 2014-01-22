require 'sqlite3'

# opens the database
database_path = "db/jukebox.sqlite"
db = SQLite3::Database.new(database_path)

def number_of_rows(db,table_name)
  # your code here
end

puts "There are #{number_of_rows(db,"Artist")} artists"
puts "There are #{number_of_rows(db,"Track")} tracks"
puts "There are #{number_of_rows(db,"Album")} albums"
puts "There are #{number_of_rows(db,"Playlist")} playlist"
puts "There are #{number_of_rows(db,"Genre")} genres"
puts "There are #{number_of_rows(db,"MediaType")} media types"
puts "There are #{number_of_rows(db,"PlaylistTrack")} playlist tracks"


# returns all the artists sorted by alphabetical order.
artists = # your code here

# returns all the love songs
love_songs = # your code here

# returns all the tracks that are longer than 5 minutes.
long_tracks = # your code here

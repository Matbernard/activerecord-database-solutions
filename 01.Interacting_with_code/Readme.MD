Now it is time to use code to interact with the `jukebox` database.

For that we use a gem called sqlite3 (not surprising!) [http://rubygems.org/gems/sqlite3](http://rubygems.org/gems/sqlite3)

To install the gem on your computer ``gem install sqlite3``

The goal is to query the database with Ruby.

## To do

Write a program in ruby to answer the following questions:

1. How many rows contains each table ?

	For that, you can create a function ``number_of_rows(db,table_name)`` that returns the number of rows in 	the table called "table_name".

	````
	def number_of_rows(db,table_name)
		# your code here
	end
	
	puts "There are #{number_of_rows(db,"Artist")} artists"
	=> There are 275 artists
	````

2. Returns the list of all the artists and sort them by name 	(alphabetical order)

	Tip: use the ``order by`` SQL command.
	
3. Find all the love songs (i.e the tracks that contain "love" in their name) and count them.

	Tip: use the ``where`` and ``like`` SQL commands.

4. Returns all the tracks that are longer than 10 minutes and sort them by length.

	Tip: you can use the comparison operator ``>`` in SQL.


## Resources

* [http://zetcode.com/db/sqliteruby/](http://zetcode.com/db/sqliteruby/)
* [http://viewsourcecode.org/why/hacking/aQuickGuideToSQLite.html](http://viewsourcecode.org/why/hacking/aQuickGuideToSQLite.html)
* [http://www.sqlcommands.net/](http://www.sqlcommands.net/)



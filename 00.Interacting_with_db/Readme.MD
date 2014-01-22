`Sqlite` is a simple database that can be used as a standalone file.
If you want more information: [http://en.wikipedia.org/wiki/SQLite](http://en.wikipedia.org/wiki/SQLite)

The goal of this first exercie is to use the command line to read and query a sample database called `jukebox.sqlite`

## Setup

* Open your terminal/console
* Go to the exercice folder

    ````
    cd Lewagon/activerecord-database/
    ````
    
* Test if you have sqlite3 installed on your computer
   
   ````
   sqlite3 -version
   ````
   If not you can download it here [http://www.sqlite.org/download.html](http://www.sqlite.org/download.html) and follow the instructions to install it.
   

* You can open the database with:

   ````
   sqlite3 db/jukebox.sqlite
   ````

* The you are in the interactive sqlite3 console and your can write queries to the database.

* You can exit the sqlite3 console with ``.quit``

	
## To do

The goal of this exercise is to explore the Jukebox database, and understand its schema.

Answer the following questions: (the resource link can be very helpful!)

1. What is the schema of the database? (i.e what are the tables, and the relation between tables)
2. Use SQL Design to draw the schema of this database.
3. How many rows each table contains?


## Resources

[http://zetcode.com/db/sqlite/tool/](http://zetcode.com/db/sqlite/tool/)

## Tool

You can also use a SQLite viewer to read the SQlite database and check your results.
[http://sourceforge.net/projects/sqlitebrowser/](http://sourceforge.net/projects/sqlitebrowser/)
	



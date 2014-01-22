require 'sqlite3'

# creates the database
db_path = "db/cookbook.sqlite"
db = SQLite3::Database.new(db_path)

# creates the schema of the database
# your code here
sql = ""
db.execute(sql)



#*************************************

# function to create a recipe
def create_recipe(name,description,length,difficulty)
  # your code here
end

# function to delete a recipe
def delete_recipe(id)
  # your code here
end

# function to update a recipe
def update_recipe(id,name,description,length,difficulty)
  # your code here
end

def get_recipes()
  # function to get all recipes
end


#*************************************

# program

puts "Salut Robuchon, what do you want to do today?"
puts "1. create a recipe"
puts "2. delete a recipe"
puts "3. update a recipe"
puts "4. read your recipes"

choice = gets.chomp

if choice == 1
  # your code here to create a recipe
  # inputs needed: name, description, length, difficulty
  
elsif choice == 2
  # your code here to delete a recipe
  # input needed: id of the recipe
  
elsif choice == 3
  # your code here to create a recipe
  # inputs needed: id, name, description, length, difficulty
  
elsif choice == 4
  # your code here to read all recipes
  
end
  
  
  
  
  
  
  
  
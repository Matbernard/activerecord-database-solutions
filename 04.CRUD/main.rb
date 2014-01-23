require 'sqlite3'

# creates the database
db_path = "db/cookbook.sqlite"
db = SQLite3::Database.new(db_path)

# creates the schema of the database
# your code here
sql = %q{
  CREATE TABLE IF NOT EXISTS recipes (
  id INTEGER PRIMARY KEY ,
  name VARCHAR(255),
  description VARCHAR(255),
  length INTEGER,
  difficulty INTEGER
  );
}

# if database already exisits
db.execute(sql)

#*************************************

# function to create a recipe
def create_recipe(db,name,description,length,difficulty)
  q = "INSERT INTO recipes (name,description,length,difficulty) VALUES ('#{name}','#{description}',#{length},#{difficulty});"
  return db.execute(q)
end

# function to delete a recipe
def delete_recipe(db,id)
  q = "DELETE FROM recipes WHERE id=#{id};"
  return db.execute(q)
end

# function to delete all recipes
def delete_all_recipes(db)
  q = "DELETE FROM recipes;"
  return db.execute(q)
end

# function to update a recipe description
def update_recipe(db,id,description)
  q = "UPDATE recipes SET description=#{name} WHERE id=#{id};"
  return db.execute(q)
end

def get_recipes(db)
  q = "Select * from recipes"
  return db.execute(q).to_a.map {|m| m.join('|')}
end


#*************************************

# program

puts "Salut Robuchon, what do you want to do today?"
puts "1. create a recipe"
puts "2. delete all recipes"
puts "3. read your recipes"

choice = gets.chomp.to_i

if choice == 1
  
  puts "name?"
  name = gets.chomp
  puts "description"
  description = gets.chomp
  puts "length"
  length = gets.chomp.to_i
  puts "difficulty"
  difficulty = gets.chomp.to_i
  
  create_recipe(db,name,description,length,difficulty)
  puts "recipe created"
  
elsif choice == 2
  delete_all_recipes(db)
  
elsif choice == 3
  puts get_recipes(db)
  
else
  puts "i did not understand"
  
end
  
  
  
  
  
  
  
  
  
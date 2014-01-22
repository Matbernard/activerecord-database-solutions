require_relative 'config/application'
require './models/recipe'

# your program here

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

require_relative 'config/application'
require './models/recipe'

# your program here

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
  
  new_recipe = Recipe.create(:name => name,
   :description => description,
   :length => length,
   :difficulty => difficulty
   )
   
  puts "new recipe created with id #{new_recipe.id}"
  
elsif choice == 2
  Recipe.delete_all
  
elsif choice == 3
  recipes = Recipe.all
  recipes.each do |r|
    puts "#{r.id}|#{r.name}|#{r.description}|#{r.length}|#{r.difficulty}"
  end
  
else
  puts "i did not understand"
  
end
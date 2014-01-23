require_relative 'config/application'
require './models/recipe'

# query the database here
# gets the top 10 difficult recipes

most_difficult_recipes = Recipe.all.order("difficulty DESC").limit(10)
most_difficult_recipes.each do |r|
  puts "#{r.name} : #{r.difficulty}"
end
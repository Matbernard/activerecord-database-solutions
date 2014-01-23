require './models/recipe'
require './models/user'

# Seed you database with recipe data from marmiton
puts "Seeding database..."
# Here is a sample of ingredients (you are free to add some !)
ingredients = ["boeuf", "veau", "thon", "tomates", "fraise", "bar", "merlu", "thon", "epinard"]

require 'nokogiri'
require 'open-uri'
require 'faker'

# creating users with the Faker gem
# for each user, scrape data from marmition and attach the recipes to this user

10.times.each do |i|
  u = User.create(:name => Faker::Name.name, :email => Faker::Internet.email)
  puts u.name
  # randomly pick on ingredient from the list
  x = rand(0..ingredients.count-1)
  ingredient = ingredients[x]
  puts ingredient
  response = open("http://www.marmiton.org/recettes/recherche.aspx?aqt=#{ingredient}")
  doc = Nokogiri::HTML(response.read)
  doc.search('.m_search_result').each do |element|
    name = element.search('.m_search_titre_recette > a').inner_text
    difficulty = element.search('.etoile1').size
    puts name
    u.recipes.create(:name => name, :difficulty => difficulty)
  end
end
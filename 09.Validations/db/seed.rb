require './models/recipe'

# Seed you database with recipe data from marmiton

puts "Seeding database..."

# Here is a sample of ingredients (you are free to add some !)
ingredients = ["boeuf", "veau", "thon", "tomates", "fraise", "bar", "merlu", "thon", "epinard"]

# Your code goes here 
# 1. Scrape recipes data from marmiton for these ingredients
# 2. Create associated recipe records in the DB



require 'nokogiri'
require 'open-uri'

ingredients.each do |i|
  response = open("http://www.marmiton.org/recettes/recherche.aspx?aqt=#{i}")
  doc = Nokogiri::HTML(response.read)
  doc.search('.m_search_result').each do |element|
    name = element.search('.m_search_titre_recette > a').inner_text
    difficulty = element.search('.etoile1').size
    r = Recipe.create(:name => name, :difficulty => difficulty)
    puts r.name
  end
end
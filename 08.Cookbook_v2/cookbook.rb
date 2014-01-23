require_relative 'config/application'
require './models/recipe'
require './models/user'

# your code here to query the database
# for each user compute the average difficulty of their recipes
# find who is the "Master Chef"

users = User.joins(:recipes).select("users.name, avg(recipes.difficulty) as difficulty_avg").group("users.name").order("avg(recipes.difficulty) DESC")
users.each do |u|
  puts u.name
  puts u.difficulty_avg
end

puts "***********"
puts "the master chef is : #{users[0].name}"

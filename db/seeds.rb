# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'json'
require 'open-uri'

puts "Reading json..."

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'

read_url = open(url).read
response = JSON.parse(read_url)

response['drinks'].each do |drink|
  Ingredient.create(name: drink['strIngredient1'])
end

puts "Finished."






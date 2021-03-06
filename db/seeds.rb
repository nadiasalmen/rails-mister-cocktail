# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'

puts "Create ingredients"
url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
ingredients = JSON.parse(open(url).read)
ingredients["drinks"].each do |ingredient|
  i = Ingredient.create(name: ingredient["strIngredient1"])
  puts "create #{i.name}"
end

Ingredient.create(name: "Lemon")
Ingredient.create(name: "Ice")
Ingredient.create(name: "Mint leaves")
Ingredient.create(name: "Prosecco")
Ingredient.create(name: "Orange")
Ingredient.create(name: "Aperol")
Ingredient.create(name: "Tequila")
Ingredient.create(name: "Coconut cream")
Ingredient.create(name: "Campari")
Ingredient.create(name: "Coke")

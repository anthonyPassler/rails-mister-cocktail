require 'json'
require 'open-uri'

url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
serialized_ingredients = open(url).read
ingredients = JSON.parse(serialized_ingredients)

ingredients["drinks"].each do |object|
  Ingredient.create(name: object["strIngredient1"])
end

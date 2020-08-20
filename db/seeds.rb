# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Ingredient.destroy_all
Cocktail.destroy_all
Dose.destroy_all

INGREDIENTS = ["Mint", "Lemon", "Sugar", "Orange Juice"]

INGREDIENTS.each do |ingredient|
  Ingredient.create(name: ingredient)
end

COCKTAILS = ["Mint Julep", "Thij's Special", "Martini", "Gin and Tonic"]

COCKTAILS.each do |cocktail|
  Cocktail.create(name: cocktail)
end

DOSES = ["1 cl", "2 tbsp", "3 cl", "1 cup"]

DOSES.each do |dose|
  new_dose = Dose.new(description: dose)
  new_dose.ingredient = Ingredient.all.sample
  new_dose.cocktail = Cocktail.all.sample
  new_dose.save
end

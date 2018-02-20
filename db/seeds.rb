# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#

# Ingredient.create(name: "lemon")
# Ingredient.create(name: "ice")
# Ingredient.create(name: "mint leaves")
# Ingredient.create(name: "light rum")
# Ingredient.create(name: "applejack")
# Ingredient.create(name: "gin")
# Ingredient.create(name: "scotch")
# Ingredient.create(name: "rum")
# Ingredient.create(name: "kiwi")
require 'json'
require 'open-uri'

Ingredient.destroy_all

url = 'http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
drinks_serialized = open(url).read
drinks = JSON.parse(drinks_serialized).flatten

drinks[1].each do |hash|
  # puts hash
  hash.each do |key, value|
    Ingredient.create(name: value)
  end
end

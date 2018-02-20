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

recipes_serialized = open('db/ingredients.json').read
recipes = JSON.parse(recipes_serialized).flatten

recipes.each do |hash|

  hash.each do |key, value|
    hash["ingredients"].each do |ingredient|
      if !Ingredient.exists?(name: "#{ingredient}")
        puts "#{ingredient}"
        Ingredient.create(name: "#{ingredient}")
      end
    end
  end
end

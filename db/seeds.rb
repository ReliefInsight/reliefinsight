# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Product.create([{name: "Food", image_url: "/assets/food.png"},
                {name: "Water", image_url: "/assets/water.png"},
                {name: "First Aid", image_url: "/assets/firstaid.png"},
                {name: "Clothes", image_url: "/assets/clothes.png"},
])

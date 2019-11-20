# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Ramen-Ya',
    address:      'Place Commerces, Nantes',
    category:     'japanese'
  },
  {
    name:         'Le Petit François',
    address:      'Ile de Nantes, Nantes',
    category:     'french'
  },
  {
    name:         'Yum-Yum',
    address:      'Centre, Nantes',
    category:     'chinese'
  },
  {
    name:         'Gargamelle',
    address:      'Place de la gare, Clisson',
    category:     'italian'
  },
  {
    name:         "L'baraque à frites",
    address:      'Grand Place, Lille',
    category:     'french'
  },
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'

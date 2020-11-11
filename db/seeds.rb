# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

10.times do
    my_flat = Flat.new({ name: Faker::Name.name,
    address: Faker::Address.street_address,
    description: Faker::Company.catch_phrase,
    price_per_night: rand(45..200),
    number_of_guests: rand(1..7) })
     my_flat.save
    puts my_flat
end
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

flat_names = ['London city Hut', 'In the woods cabin', 'Luxurious apartment in Barcelona', 'Light & Spacious Garden Flat London']

4.times do
  Flat.create(
    name: flat_names.sample,
    address: Faker::Address.street_name,
    description: Faker::Restaurant.description,
    price_per_night: rand(75..150),
    number_of_guests: rand(2..8)
  )
end

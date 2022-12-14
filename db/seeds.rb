# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Flat.destroy_all

5.times do
  Flat.create!(name: Faker::Mountain.name,
    address: Faker::Address.full_address,
    description:Faker::Lorem.sentence,
    price_per_night: rand(100..1000),
    number_of_guests: rand(1..10))
end

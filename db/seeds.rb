# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

10.times do
  puts "start creating a restaurant"
  restaurant = Restaurant.create!(
    name: Faker::FunnyName.two_word_name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: Restaurant::CATEGORY.sample
  )
  puts "finished creating restaurant #{restaurant.id}"
end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts 'Creating 100 fake restaurants...'

10.times do
  restaurant = Restaurant.new(
    name: Faker::Games::Minecraft.achievement,
    address: Faker::Fantasy::Tolkien.location,
    phone_number: Faker::PhoneNumber.cell_phone_with_country_code,
    category: %w[chinese italian japanese french belgian].sample
  )
  restaurant.save!
end
puts "I'm done"

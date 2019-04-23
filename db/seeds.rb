# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "faker"

500.times do
  Company.create(name: Faker::Company.name,
                 description: Faker::Lorem.paragraph,
                 address: Faker::Address.full_address,
                 website: "https://" + Faker::Internet.domain_name,
                 city: Faker::Address.city,
                 category: Faker::IndustrySegments.industry,
                 latitude: Faker::Address.latitude,
                 longitude: Faker::Address.longitude)
end

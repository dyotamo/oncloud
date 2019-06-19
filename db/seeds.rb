require "faker"

100.times do
  Company.create(name: Faker::Company.name,
                 description: Faker::Lorem.paragraph,
                 address: Faker::Address.full_address,
                 website: Faker::Internet.domain_name,
                 city: Faker::Address.city,
                 category: Faker::IndustrySegments.industry,
                 latitude: Faker::Address.latitude,
                 longitude: Faker::Address.longitude)
end

require 'faker'

# restaurants = [
#   {
#     name: Faker::Company.name,
#     address: "#{Faker::Address.street_address}, #{Faker::Address.city }"
#     rating: rand(0..5)
#   },
#   {
#     name: Faker::Company.name,
#     address: "#{Faker::Address.street_address}, #{Faker::Address.city }"
#     rating: rand(0..5)
#   },
#   {
#     name: Faker::Company.name,
#     address: "#{Faker::Address.street_address}, #{Faker::Address.city }"
#     rating: rand(0..5)
#   }
# ]

puts "Cleaning up database..."
Restaurant.destroy_all

puts "Creating 100 restaurants..."
100.times do
  Restaurant.create!({
    name: Faker::Company.name,
    address: "#{Faker::Address.street_address}, #{Faker::Address.city }"
    rating: rand(0..5)
  })
end

puts "Created #{Restaurant.count} restaurants!"
puts "Finished Seeding!"

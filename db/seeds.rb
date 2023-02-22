puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
10.times do
  Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_name,
    phone_number: Faker::PhoneNumber.phone_number,
    category: %w[chinese italian japanese french belgian].sample
  )
end
puts 'Finished!'

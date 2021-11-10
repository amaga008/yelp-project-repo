puts "Creating restaurants..."

5.times do
  restaurant = Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_name,
    phone_number: Faker::PhoneNumber.cell_phone_with_country_code,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample
  )
  puts "Creating restaurant with id #{restaurant.id}"
end

puts "Finished!"

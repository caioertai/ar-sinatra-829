require "faker"

10.times do
  Restaurant.create(
    name: Faker::Book.title,
    address: Faker::Address.street_name,
    rating: rand(1..5)
  )
end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

50.times do
  Restaurant.create(
    name: Faker::Games::Witcher.location,
    address: Faker::TvShows::RickAndMorty.location,
    phone_number: Faker::PhoneNumber.phone_number,
    category: ['chinese', 'italian', 'japanese', 'french', 'belgium'].sample,
  )
end

500.times do 
  Review.create(
    content:  Faker::Movie.quote,
    rating: Faker::Number.between(1, 5),
    restaurant_id: Faker::Number.between(1, 50),
  )
end

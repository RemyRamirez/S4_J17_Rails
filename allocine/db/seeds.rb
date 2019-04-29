# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
array_genre = ["action", "horreur", "comédie", "drame"]
#if needed to remove seed movies remove comments and change the id numbers to remove
=begin
id = 4
100.times do
    movie = Movie.find(id)
    movie.destroy
    id=1
end
=end

100.times do
rand_genre = array_genre.sample
rand_year = rand(1920..2020)
rand_rate = rand(0.0..5.0).round(1)
  movie = Movie.create!(name: Faker::Movie.quote, year: rand_year, genre: rand_genre, director: Faker::Artist.name, allocine_rating: rand_rate, already_seen: false )
end
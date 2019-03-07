# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do
  Song.create([{
    song: Faker::University.name,
    album: Faker::Nation.capital_city
  }])
end

# 8.times do
#   BillboardSong.create([{
#     rank: Faker::Number.number,
#     song: Faker::University.name
#   }])
# end

4.times do
  Artist.create([{
    song: Faker::University.name,
    artist: Faker::Artist.name
  }])
end

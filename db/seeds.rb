# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Genre.create([
  { title: "Action" },
  { title: "Adventure" },
  { title: "Comedy" },
  { title: "Drama" },
  { title: "Fantasy" },
  { title: "Horror" },
])

5.times do |i|
  Comic.create(title: "Comic ##{i}", description: "A comic description.", genre_id: (1..5).to_a.sample )
end

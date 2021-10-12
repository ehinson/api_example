# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

library = Library.create(name: "My Cool Library")

20.times do |i|
    Book.create(title: Faker::Book.title, author: Faker::Book.author, library_id: library.id)
end
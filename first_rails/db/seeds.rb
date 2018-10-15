# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

User.create!(name: 'Jay', email: 'misterjustincox@gmail.com')
User.create!(name: 'Dean', email: 'xoxAnimeWeedLord6969xox@hotmail.com')
User.create!(name: 'Keith', email: 'kfb@gmail.com')

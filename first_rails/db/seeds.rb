# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Artwork.destroy_all


jay = User.create!(username: 'JayOneTheSk8')
keith = User.create!(username: 'fakesim')
picasso = User.create!(username: 'mi_amore1881')
michael = User.create!(username: 'Sistine_prEtTy')
van_gogh = User.create!(username: 'wheres_my_ear')


# artworks
a1 = Artwork.create!(title: 'Woman with Yellow Hat', image_url: 'https://uploads7.wikiart.org/images/pablo-picasso/woman-with-yellow-hat-jacqueline.jpg')

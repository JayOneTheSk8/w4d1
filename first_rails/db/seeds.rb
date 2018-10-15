# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Artwork.destroy_all

jaq = 'https://uploads7.wikiart.org/images/pablo-picasso/woman-with-yellow-hat-jacqueline.jpg'
sis = 'http://www.museivaticani.va/content/dam/museivaticani/immagini/collezioni/musei/cappella_sistina/00_00_Cappella_Sistina.png/_jcr_content/renditions/cq5dam.web.1280.1280.png'
starry = 'https://thumbs-prod.si-cdn.com/aQ881WO1A3-pHwImq5daD5A9B-4=/800x600/filters:no_upscale()/https://public-media.smithsonianmag.com/filer/Vincent-van-Gogh-The-Starry-Night-631.jpg'
van = 'https://upload.wikimedia.org/wikipedia/commons/4/4c/Vincent_van_Gogh_-_Self-Portrait_-_Google_Art_Project_%28454045%29.jpg'

jay = User.create!(username: 'JayOneTheSk8')
keith = User.create!(username: 'fakesim')
picasso = User.create!(username: 'mi_amore1881')
michael = User.create!(username: 'Sistine_prEtTy')
van_gogh = User.create!(username: 'wheres_my_ear')


# artworks
a1 = Artwork.create!(title: 'Woman with Yellow Hat', image_url: jaq, artist_id: picasso.id)
a2 = Artwork.create!(title: 'Sistine Chapel', image_url: sis, artist_id: michael.id)
a3 = Artwork.create!(title: 'Starry Night', image_url: starry, artist_id: van_gogh.id)
a4 = Artwork.create!(title: 'Self-Portrait', image_url: van, artist_id: van_gogh.id)

# artwork_shares
ArtworkShare.create!(artwork_id: a1.id, viewer_id: jay.id)
ArtworkShare.create!(artwork_id: a1.id, viewer_id: keith.id)
ArtworkShare.create!(artwork_id: a2.id, viewer_id: keith.id)
ArtworkShare.create!(artwork_id: a2.id, viewer_id: picasso.id)
ArtworkShare.create!(artwork_id: a3.id, viewer_id: jay.id)

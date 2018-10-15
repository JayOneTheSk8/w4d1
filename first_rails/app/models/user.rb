# == Schema Information
#
# Table name: users
#
#  id         :bigint(8)        not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  username   :string           not null
#



class User < ApplicationRecord
  validates :name, :email, uniqueness: true

  # Viewer
  has_many :artwork_shares,
    foreign_key: :viewer_id,
    class_name: :ArtworkShare

  # Artist
  has_many :artworks,
    foreign_key: :artist_id,
    class_name: :Artwork

  has_many :shared_artworks,
    through: :artwork_shares,
    source: :artwork
end

# == Schema Information
#
# Table name: artworks
#
#  id         :bigint(8)        not null, primary key
#  title      :string           not null
#  image_url  :string           not null
#  artist_id  :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Artwork < ApplicationRecord

  validates :title, uniqueness: { scope: :artist_id,
    message: "You cannot upload artwork with the same title." }
  validates :image_url, :title, presence: true

  has_many :artwork_shares,
    foreign_key: :artwork_id,
    class_name: :ArtworkShare

  belongs_to :artist,
    foreign_key: :artist_id,
    class_name: :User


  has_many :shared_viewers,
    through: :artwork_shares,
    source: :viewer
end

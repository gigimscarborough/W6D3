class Artwork < ApplicationRecord
    validates :title, :artist_id, :image_url, presence: true

    validates :title, uniqueness: {scope: :artist_id, message: 'Artwork can only have one artist' }

    belongs_to :artist,
        class_name: :User,
        foreign_key: :artist_id

    has_many :shares,
        class_name: :ArtworkShare,
        foreign_key: :artwork_id

    has_many :shared_viewers,
        through: :shares,
        source: :viewer
end

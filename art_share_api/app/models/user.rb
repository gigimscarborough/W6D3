class User < ApplicationRecord
    validates :username, presence: true
    validates :username, uniqueness: true

    has_many :artworks,
        class_name: :Artwork,
        foreign_key: :artist_id

    has_many :shares, 
        class_name: :ArtworkShare, 
        foreign_key: :viewer_id
    
    has_many :shared_artworks,
        through: :shares, 
        source: :artwork
end

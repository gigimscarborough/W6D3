class ArtworkShare < ApplicationRecord
    validates :artwork_id, :viewer_id, presence: true 

    validates :viewer_id, uniqueness: {scope: :artwork_id, message: 
    'Artwork can only be viewed once'}

    belongs_to :viewer,
        class_name: :User,
        foreign_key: :viewer_id
    
    belongs_to :artwork,
        class_name: :Artwork,
        foreign_key: :artwork_id

end

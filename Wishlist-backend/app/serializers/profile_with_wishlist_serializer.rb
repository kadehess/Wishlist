class ProfileWithWishlistSerializer < ActiveModel::Serializer
    
    has_many :gifts
end
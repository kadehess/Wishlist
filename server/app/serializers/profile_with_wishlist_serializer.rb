class ProfileWithWishlistSerializer < ActiveModel::Serializer
    attributes :id, :name, :username, :passcode, :image
    has_many :wishlists
end
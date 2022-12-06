class ProfileWithWishlistSerializer < ActiveModel::Serializer
    attributes :id, :name, :username, :passcode, :photo
    has_many :wishlists
end
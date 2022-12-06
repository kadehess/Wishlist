class GiftSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :image
 has_many :rates
end

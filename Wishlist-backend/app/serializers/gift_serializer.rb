class GiftSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :image
 has_many :rates
 has_many :details
end

class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :password_digest, :image
end

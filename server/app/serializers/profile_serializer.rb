class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :passcode, :photo
end

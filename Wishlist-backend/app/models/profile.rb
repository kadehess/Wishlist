class Profile < ApplicationRecord
    has_many :rates
    has_many :wishlists 
    has_many :gifts, through: :rates
    has_many :gifts, through: :wishlists

    has_secure_password

end

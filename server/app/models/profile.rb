class Profile < ApplicationRecord
    has_many :rates, dependent: : destroy
    has_many :wishlists, dependent: : destroy 
    has_many :gifts, through: :rates
    has_many :gifts, through: :wishlists
end

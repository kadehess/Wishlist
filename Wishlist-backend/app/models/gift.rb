class Gift < ApplicationRecord
    has_many :gift_details
    has_many :rates
    has_many :wishlists
    has_many :profiles, through: :rates
    has_many :profiles, through: :wishlists
    
end

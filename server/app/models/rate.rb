class Rate < ApplicationRecord
    belongs_to :profile
    belongs_to :gift

    validates :rate, inclusion: 1..5
end

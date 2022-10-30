class Vitamin < ApplicationRecord
    has_many :itemvitamins
    has_many :items, through: :itemvitamins
end

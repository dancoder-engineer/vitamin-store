class Cartitem < ApplicationRecord
    has_many :carts, through: :cartitem
    has_many :items
end

class Orderitem < ApplicationRecord
    has_many :orders
    has_many :items
end

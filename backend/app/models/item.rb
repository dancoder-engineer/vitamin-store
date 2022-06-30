class Item < ApplicationRecord
    has_many :reviews

    has_many :itemvitamins

    has_many :vitamins, through: :itemvitamins
    has_many :carts, through: :cartitem
    has_many :orders, through: :orderitem
end

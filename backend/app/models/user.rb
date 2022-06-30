class User < ApplicationRecord

    has_many :creditcards
    has_one :cart
    has_many :reviews
    has_many :orders
    has_many :addresses
end

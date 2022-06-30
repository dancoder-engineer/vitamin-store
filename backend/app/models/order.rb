class Order < ApplicationRecord
    belongs_to :user
    has_many :items, through: :orderitem
    has_one :address
    has_one :creditcard
end

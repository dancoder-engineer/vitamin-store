class User < ApplicationRecord

    has_secure_password
#    validates :password_confirmation, presence: true
#    validate :confirmed
#t.string "firstname"
#t.string "lastname"
#t.string "username"
validates :username, presence: true
validates :username, uniqueness: true
validates :firstname, presence: true
validates :lastname, presence: true

    has_many :creditcards
    has_one :cart
    has_many :reviews
    has_many :orders
    has_many :addresses

end

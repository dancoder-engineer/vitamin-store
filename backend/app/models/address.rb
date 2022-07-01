class Address < ApplicationRecord

  #  belongs_to :order
    belongs_to :user
    has_many :creditcards

end

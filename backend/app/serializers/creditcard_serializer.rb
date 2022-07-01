class CreditcardSerializer < ActiveModel::Serializer
  attributes :id, :nameoncard, :number, :expiration, :cvc
  belongs_to :user
  belongs_to :address
end

class UserSerializer < ActiveModel::Serializer
  attributes :id, :firstname, :lastname, :username, :kind
  has_many :creditcards
  has_many :addresses
  has_many :reviews

end

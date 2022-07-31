class UserSerializer < ActiveModel::Serializer
  attributes :id, :firstname, :lastname, :username, :kind
  has_many :reviews
end

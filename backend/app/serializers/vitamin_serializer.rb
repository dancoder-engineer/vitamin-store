class VitaminSerializer < ActiveModel::Serializer
  attributes :id, :name, :whatsitdo

  has_many :items, through: :itemvitamins
end

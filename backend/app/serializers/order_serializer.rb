class OrderSerializer < ActiveModel::Serializer
    attributes :id, :user_id, :fulfilled, :fulfilled_by, :subtotal, :stax, :grandtotal
    belongs_to :user
    has_many :orderitems
  end
  
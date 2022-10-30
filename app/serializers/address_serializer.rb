class AddressSerializer < ActiveModel::Serializer
  attributes :id, :street1, :street2, :town, :state, :zipcode, :order_id
  belongs_to :user
end

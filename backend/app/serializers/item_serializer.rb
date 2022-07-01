class ItemSerializer < ActiveModel::Serializer
  attributes :id, 
:name, 
:brand, 
:dose, 
:pillamount, 
:price, 
:pilltype, 
:blurb, 
:picurl


#has_many :itemvitamins
has_many :vitamins, through: :itemvitamins

end
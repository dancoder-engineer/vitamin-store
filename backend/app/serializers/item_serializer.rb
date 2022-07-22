class ItemSerializer < ActiveModel::Serializer
  attributes :id, 
:name, 
:productname,
:brand, 
:dose, 
:pillamount, 
:price, 
:pilltype, 
:blurb, 
:picurl,
:featured,
:stock


has_many :reviews
has_many :vitamins, through: :itemvitamins

end

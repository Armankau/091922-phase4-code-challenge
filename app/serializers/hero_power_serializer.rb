class HeroPowerSerializer < ActiveModel::Serializer
  attributes :id, :strength, :hero, :power 
  has_one :hero
  has_one :power 
end

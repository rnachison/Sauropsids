class Sauropsid
  include Mongoid::Document
  field :order, type: String
  field :name, type: String
  field :species, type: String
  field :age, type: Integer
  field :location, type: String
  field :wingspan, type: Float
  field :weight, type: Float
  field :length, type: Float
  field :is_adopted, type: Mongoid::Boolean
  field :image, type: String
  field :lat, type: Float
  field :lng, type: Float


  belongs_to :user
end

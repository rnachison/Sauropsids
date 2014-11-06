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

  belongs_to :user
end

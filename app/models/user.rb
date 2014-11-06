class User
  include Mongoid::Document
  include ActiveModel::SecurePassword
  field :email, type: String
  field :password_digest, type: String
  field :name, type: String

  has_secure_password

  validates_uniqueness_of :email
  validates_presence_of :name

  has_many :sauropsids
end
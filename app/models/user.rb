class User < ApplicationRecord
  has_secure_password
  validates_confirmation_of :password
  validates :password, length: { minimum: 10, maximum: 64 }
end

class User < ApplicationRecord
  has_many :rentals
  has_many :cars, through: :rentals
  has_many :sales
  has_many :cars, through: :sales

  has_secure_password
end

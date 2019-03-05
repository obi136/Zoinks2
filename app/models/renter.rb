class Renter < ApplicationRecord
  has_many :rentals
  has_many :cars, through: :rentals

  has_secure_password
end

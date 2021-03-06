class SalesAgent < ApplicationRecord
  has_many :commissions
  has_many :cars, through: :commissions

  has_secure_password
end

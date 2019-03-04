class SalesAgent < ApplicationRecord
  has_many :commissions
  has_many :cars, through: :commissions
end

class Car < ApplicationRecord
  has_many :commissions
  has_many :sales_agents, through: :commissions
  has_many :rentals
  has_many :renters, through: :rentals
end

class Car < ApplicationRecord
  has_many :commissions
  has_many :sales_agents, through: :commissions
  has_many :rentals
  has_many :users, through: :rentals

  default_scope { order(created_at: :asc) }


end

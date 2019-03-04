class Commission < ApplicationRecord
  belongs_to :sales_agent
  belongs_to :car
end

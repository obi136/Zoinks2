class Rental < ApplicationRecord
  belongs_to :car
  belongs_to :renter

  def total_price
    # byebug
    days = ((self.pick_up.strftime("%d").to_i)..(self.drop_off.strftime("%d")).to_i).count
    self.total_price = days * self.car.price.to_i
  end
end

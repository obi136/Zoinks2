class RentalsController < ApplicationController

  def show
    @rental = Rental.find(params[:id])
  end

  def new
    @rental = Rental.new
    @renters = Renter.all
    @cars = Car.all
  end

  def create
    @rental = Rental.create(rental_params)
    redirect_to rental_path(@rental)
  end

  private

  def rental_params
    params.require(:rental).permit(:review, :pick_up, :drop_off, :total_price, :car_id, :renter_id)
  end
end

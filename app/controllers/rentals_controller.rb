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
     @car = Car.find(params[:rental][:car_id])
    if @car.available == false
      flash[:unavailable] = "Sorry this car is unavailable"
      redirect_to new_rental_path
    else
      @rental = Rental.create(rental_params)
      @car.update(available: false)
      redirect_to rental_path(@rental)
    end
  end

  def edit
    @rental = Rental.find(params[:id])
  end

  def update
    @rental = Rental.find(params[:id])
    @rental.update(rental_params)
    redirect_to renter_path(@rental.renter)
  end

  private

  def rental_params
    params.require(:rental).permit(:review, :pick_up, :drop_off, :total_price, :car_id, :renter_id)
  end
end

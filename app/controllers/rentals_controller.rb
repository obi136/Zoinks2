class RentalsController < ApplicationController

  def show
    @rental = Rental.find(params[:id])
  end

  def new
    @rental = Rental.new
    @users = User.all
    @cars = Car.where(available: true)
  end

  def create
    @rental = Rental.create(rental_params)
    @car = @rental.car
    @car.update(available: false)
    redirect_to rental_path(@rental)

  end

  def edit
    @rental = Rental.find(params[:id])
  end

  def update
    @rental = Rental.find(params[:id])
    @rental.update(rental_params)
    redirect_to rental_path(@rental.user)
  end

  private

  def rental_params
    params.require(:rental).permit(:review, :pick_up, :drop_off, :total_price, :car_id, :user_id)
  end
end

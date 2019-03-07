class RentalsController < ApplicationController

  def index
    @rentals = Rental.all.where(user_id: current_user.id)
  end

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
    @rental.review = params[:rental][:review]
    @rental.save
    # byebug
    redirect_to cars_path
  end

  private

  def rental_params
    params.require(:rental).permit(:review, :pick_up, :drop_off, :total_price, :car_id, :user_id)
  end
end

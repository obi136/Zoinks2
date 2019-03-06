class SalesController < ApplicationController

  def show
    redirect_to cars_path
  end

  def new
    @sale = Sale.new
  end

  def create
    @sale = Car.create(sale_params)
    redirect_to sale_path(@sale)
  end

  private

  def sale_params
    params.require(:sale).permit(:make, :model, :year, :color, :sale_price, :rent_price, :available, :image, :user_id, :car_id)
  end

end

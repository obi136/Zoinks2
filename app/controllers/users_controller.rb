class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(renter_params)
    redirect_to renter_path(@user)
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(renter_params)
    redirect_to renter_path(@user)
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to renters_path
  end

  private

  def renter_params
    params.require(:user).permit(:name, :age, :street, :city, :state, :zip, :phone, :username, :password)
  end

end

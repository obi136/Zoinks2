class CommissionsController < ApplicationController

  def show
    @commission = Commission.find(params[:id])
  end

  def new
    @commission = Commission.new
    @sales_agents = SalesAgent.all
    @cars = Car.all
  end

  def create
    @commission = Commission.create(commission_params)
    redirect_to commission_path(@commission)
  end

  private

  def commission_params
    params.require(:commission).permit(:sales_agent_id, :car_id)
  end

end

class SalesAgentsController < ApplicationController

  def index
    @sales_agents = SalesAgent.all
  end

  def show
    @sales_agent = SalesAgent.find(params[:id])
  end

  def new
    @sales_agent = SalesAgent.new
  end

  def create
    @sales_agent = SalesAgent.create(sales_agent_params)
    redirect_to sales_agent_path(@sales_agent)
  end

  def edit
    @sales_agent = SalesAgent.find(params[:id])
  end

  def update
    @sales_agent = SalesAgent.find(params[:id])
    @sales_agent.update(sales_agent_params)
    redirect_to sales_agent_path(@sales_agent)
  end

  def destroy
    @sales_agent = SalesAgent.find(params[:id])
    @sales_agent.destroy
    redirect_to sales_agents_path(@sales_agent)
  end

  private

  def sales_agent_params
    params.require(:sales_agent).permit(:name, :username, :password)
  end
end

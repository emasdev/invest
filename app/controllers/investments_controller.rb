class InvestmentsController < ApplicationController
  def index
    @investments = Investment.all
  end
  
  def new
    @investment = current_user.investments.new
    @groups = Group.all
  end
  
  def create
    @investment = current_user.investments.new(investment_params)
    if @investment.save then
      redirect_to "/investments", notice: 'investment has been created'
    else
      redirect_to "/investments/new", notice: @investment.errors.full_messages
    end
  end
  
  private
  
  def investment_params
    params.require(:investment).permit(:name, :amount, :groups)
  end
end

class InvestmentsController < ApplicationController
  def index
    @investments = current_user.my_investments
  end
  
  def new
    @investment = current_user.investments.new
    @groups = Group.all
  end
  
  def create
    @investment = current_user.investments.new(investment_params)
    groups = Array.new
    params[:investment][:groups].each do |group_id|
      if group_id != "" then
        group = Group.find(group_id)
        @investment.groups << group
      end 
    end
    
    if @investment.save then
      redirect_to "/investments", notice: 'investment has been created'
    else
      redirect_to "/investments/new", notice: @investment.errors.full_messages
    end
  end

  def external
    @investments = current_user.my_external_investments
  end
  
  private
  
  def investment_params
    params.require(:investment).permit(:name, :amount)
  end
end

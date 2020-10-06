class InvestmentsController < ApplicationController
  before_action :logged_in?
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
    has_group = false
    params[:investment][:groups].each do |group_id|
      if group_id != "" then
        group = Group.find(group_id)
        @investment.groups << group
        has_group = true
      end 
    end
    
    if @investment.save then
      if has_group then
        redirect_to "/investments"
      else
        redirect_to "/investments/external"
      end
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

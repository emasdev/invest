class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    unless !User.find_by(username: params[:name])
      @user = User.new(params.require(:user).permit(:name))
      session[:user_id] = @user.id
    end 
    
    redirect_to '/welcome'
 end
end

class SessionsController < ApplicationController
  def new

  end

  def login
  end

  def logout
    session[:user_id] = nil
    redirect_to '/'
  end

  def create
    @user = User.find_by(name: params[:name])
    if @user
       session[:user_id] = @user.id
       redirect_to '/'
    else
       redirect_to '/login', notice: 'User not found'
    end
  end

  def transactions
    
  end

  def page_requires_login
  end
end

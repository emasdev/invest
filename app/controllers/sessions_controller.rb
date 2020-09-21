class SessionsController < ApplicationController
  def new
  end

  def login
  end

  def create
    @user = User.find_by(name: params[:name])
    if @user
       sessions[:user_id] = @user.id
       redirect_to '/welcome'
    else
       redirect_to '/login'
    end
  end

  def welcome
    
  end

  def page_requires_login
  end
end

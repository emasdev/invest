class InvestController < ApplicationController

  before_action :logged_in?, except: %i[index]
  def index
    if logged_in?
      redirect_to '/profile'
    end
  end

  def profile
  end
end

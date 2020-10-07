class InvestController < ApplicationController
  before_action :logged_in?, except: %i[index]
  def index
    redirect_to '/profile' if logged_in?
  end

  def profile; end
end

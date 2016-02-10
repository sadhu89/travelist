class WelcomeController < ApplicationController
  before_filter :auth_user

  def auth_user
    redirect_to destinations_url if user_signed_in?
  end

  def index
  end
end

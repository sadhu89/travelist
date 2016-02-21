class DestinationsController < ApplicationController
  before_action :authenticate_user!

  def index
  	@destinations=current_user.destinations.desc(:position)
  	@destination=Destination.new
    @user = current_user
  end

  def create
  	current_user.destinations.create(destination_params)
  	redirect_to root_path
  end

  def destroy
    Destination.find(params[:id]).destroy
    redirect_to root_path
  end

  private
  def destination_params
  	params.require(:destination).permit(:name)
  end

end

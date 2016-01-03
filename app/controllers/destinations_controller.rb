class DestinationsController < ApplicationController
  def index
  	@destinations=Destination.all
  	@destination=Destination.new
  end

  def create
  	Destination.create!(destination_params)
  	redirect_to root_path
  end

  private
  def destination_params
  	params.require(:destination).permit(:name)
  end

end

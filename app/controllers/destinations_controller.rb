class DestinationsController < ApplicationController
  def index
  	@destinations=Destination.all
  end
end

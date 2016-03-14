class VisitsController < ApplicationController
  def create
    destination = Destination.find(params[:destination_id])
    destination.mark_visited
    destination.save!
    redirect_to destinations_path
  end
  def destroy
    destination = Destination.find(params[:destination_id])
    destination.mark_non_visited
    destination.save!
    redirect_to destinations_journey_path
  end
end

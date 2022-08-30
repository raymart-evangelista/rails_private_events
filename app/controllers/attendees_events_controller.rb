class AttendeesEventsController < ApplicationController
  def new
    @event = Event.find(params[:id])
  end

  def create
    @event = Event.find(params[:id])
    @event.attendees << current_user
    flash[:notice] = "You have reginstered for the event."
    redirect_to root_path
  end
end

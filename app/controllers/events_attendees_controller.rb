class EventsAttendeesController < ApplicationController
  def new
    @event = Event.find(params[:id])
  end

  def create
    @event = Event.find(params[:id])
    @event_attendee = EventAttendee.new({ attendee_id: current_user.id, event_id: @event.id})
    if @event_attendee.save
      flash[:notice]= "You are now registered for the event"
      redirect_to root_path
    else
      redirect_to :back
      flash[:notice]= "Unable to register"
    end
  end
end
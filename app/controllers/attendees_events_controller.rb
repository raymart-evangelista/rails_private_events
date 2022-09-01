class AttendeesEventsController < ApplicationController
  def new
    @event = Event.find(params[:id])
  end

  def create
    @event = Event.find(params[:id])
    @event.attendees << current_user
    # @user = current_user
    # @user.attended_events << @event
    flash[:notice] = "You have reginstered for the event."
    redirect_to root_path
  end

  def destroy
    @event = Event.find(params[:id])


    @record = AttendeeEvent.find_by(event_attendee_id: current_user.id, event_id: @event.id)

    if @record.destroy
      flash[:notice] = "Event was successfully deleted!"
      redirect_to root_path
    else
      flash.now[:alert] = "An error occurred. Please try again."
      render :show
    end
  end
end

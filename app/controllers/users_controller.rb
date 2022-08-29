class UsersController < ApplicationController
  def show
    @user = current_user
  end

  def show_attended_events
    @attended_events = current_user.attended_events
  end
end

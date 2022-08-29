class ChangeEventAttendeesToEventsAttendees < ActiveRecord::Migration[7.0]
  def change
    rename_table :event_attendees, :events_attendees
  end
end

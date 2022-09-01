class RemoveEventsAttendeesTable < ActiveRecord::Migration[7.0]
  def change
    drop_table :events_attendees
  end
end

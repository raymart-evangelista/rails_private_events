class RemoveEventTimeFromEvents < ActiveRecord::Migration[7.0]
  def change
    remove_column :events, :event_time
  end
end

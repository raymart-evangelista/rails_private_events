class Event < ApplicationRecord
  # a creator makes events; event.creator
  belongs_to :creator, foreign_key: "creator_id", class_name: "User"

  # events have attendees
  # has_many :attendees, foreign_key: "attendee_id", class_name: "User"
end

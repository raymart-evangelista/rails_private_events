class Event < ApplicationRecord
  # a creator makes events; event.creator
  belongs_to :creator, foreign_key: "creator_id", class_name: "User"

  # an event has attendees; event.attendees
  # has_many :event_attendees, foreign_key: "attendee_event_id"
  # has_many :attendees, through: :event_attendees, source: :event_attendee
  has_many :event_attendees, foreign_key: "event_id"
  has_many :attendees, through: :event_attendees, source: event

end

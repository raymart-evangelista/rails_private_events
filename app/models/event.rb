class Event < ApplicationRecord
  # a creator makes events; event.creator
  belongs_to :creator, foreign_key: "creator_id", class_name: "User"

  # has many attendees through AttendeeEvent
  has_many :attendee_events
  has_many :attendees, through: :attendee_events, foreign_key: "attendee_id", source: :attendee
end

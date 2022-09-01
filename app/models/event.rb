class Event < ApplicationRecord
  # a creator makes events; event.creator
  belongs_to :creator, foreign_key: :creator_id, class_name: "User"

  # has many attendees through AttendeeEvent
  has_many :attendee_events, foreign_key: :event_id, dependent: :destroy
  has_many :attendees, through: :attendee_events, source: :event_attendee, dependent: :destroy

  scope :past, -> { where("event_date < NOW()").order("event_date desc") }

  scope :upcoming, -> { where("event_date > NOW()").order("event_date asc") }
end

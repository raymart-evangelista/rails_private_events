class AttendeeEvent < ApplicationRecord
  belongs_to :event_attendee, class_name: "User"
  belongs_to :event, class_name: "Event"
end

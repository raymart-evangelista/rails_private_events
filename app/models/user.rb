class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  # a creator makes events; creator.events
  has_many :events, foreign_key: "creator_id", class_name: "Event"

  has_many :event_attendees, foreign_key: "attendee_id"
  has_many :attended_events, through: :event_attendees, source: :attendee

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end

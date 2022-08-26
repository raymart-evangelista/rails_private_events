class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  # events created
  has_many :creator_events, foreign_key: "creator_id", class_name: "Event"

  # events attending; user.event_attending
  # belongs_to :events_attending, class_name: "Event"

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end

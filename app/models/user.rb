class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  # a creator makes events; creator.events
  has_many :events, foreign_key: "creator_id", class_name: "Event"

  # has many events attending through AttendeeEvent

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end

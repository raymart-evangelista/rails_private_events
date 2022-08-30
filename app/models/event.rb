class Event < ApplicationRecord
  # a creator makes events; event.creator
  belongs_to :creator, foreign_key: "creator_id", class_name: "User"
end

class Event < ApplicationRecord
    belongs_to :creator, class_name: "User"
    has_many :guest_lists
    has_many :attendees, through: :guest_lists, source: :attendee
end
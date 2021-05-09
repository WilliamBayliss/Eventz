class Event < ApplicationRecord
    belongs_to :creator, class_name: "User"
    has_many :guest_lists
    has_many :attendees, through: :guest_lists, source: :attendee

    scope :past, -> { where("date < ?", Date.today) }
    scope :upcoming, -> { where("date > ?", Date.today) }
    scope :current, -> { where("date = ?", Date.today) }
    # def self.past
    #     self.where("date < ?", Date.today)
    # end

    # def self.upcoming
    #     self.where("date > ?", Date.today)
    # end
end
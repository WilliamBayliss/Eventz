class Event < ApplicationRecord
    has_one :creator, class_name: "User"
end

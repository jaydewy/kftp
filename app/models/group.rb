class Group < ApplicationRecord
    # still need to implement. The "Group" that opencampground considers
    #    is where one camper books multiple lots
    belongs_to :camper
    has_many :reservations
end

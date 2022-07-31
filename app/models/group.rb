class Group < ApplicationRecord
    belongs_to :camper
    has_many :reservations
end

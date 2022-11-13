class Event < ApplicationRecord
    has_many :reservations
    has_many :extras
    # has_many :fees
end

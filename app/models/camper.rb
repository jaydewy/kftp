class Camper < ApplicationRecord
    has_many :groups
    has_many :reservations
end

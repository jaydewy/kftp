class Camper < ApplicationRecord
    has_many :groups
    has_many :reservations

    def full_name
        "#{last_name}, #{first_name}"
    end
end

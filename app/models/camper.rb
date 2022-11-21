class Camper < ApplicationRecord
    has_many :groups
    has_many :reservations

    validates :last_name, :first_name, presence: true

    def full_name
        "#{last_name}, #{first_name}"
    end
end

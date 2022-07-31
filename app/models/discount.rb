class Discount < ApplicationRecord
    has_many :reservations

    def percentage?
        self.discount_percent != 0
    end
end

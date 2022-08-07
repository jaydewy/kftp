class Lot < ApplicationRecord
    belongs_to :rate
    belongs_to :site_type
    has_many :reservations

    # to-do list
    #   still need to check for conflicts with reservations

    def lot_fee
        self.rate.rate
    end
end

class Lot < ApplicationRecord
    belongs_to :rate
    belongs_to :site_type
    has_many :reservations

    def lot_fee
        self.rate.rate
    end
end

class Lot < ApplicationRecord
    belongs_to :rate # deprecated - now use fees attached to the site_type
    belongs_to :site_type
    has_many :reservations

    # to-do list
    #   still need to check for conflicts with reservations

    # Old method - now, reservations need to determine their total lot fee
    #    based on the event they are associated with
    def lot_fee
        self.rate.rate
    end
end

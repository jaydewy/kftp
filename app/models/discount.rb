class Discount < ApplicationRecord
    has_many :reservations

    # Class methods
    def self.discount_counts
        # returns total reservations for each Discount, for the active Event
        Discount.joins(:reservations).merge(Reservation.active).group('discounts.name').select('discounts.name as name, count(discounts.id) as total').order(name: :asc)
    end
end

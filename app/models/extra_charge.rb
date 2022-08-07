class ExtraCharge < ApplicationRecord
    belongs_to :reservation
    belongs_to :extra

    before_update :set_charge

    def set_charge
        self.charge = self.number * self.extra.charge
    end

    def self.subtotal(reservation_id)
        reservation = Reservation.find(reservation_id)
        res_ext_charges = reservation.extra_charges
        total = 0.0
        res_ext_charges.each do |ec|
            total += ec.charge
        end
        return total
    end
end

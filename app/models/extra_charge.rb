class ExtraCharge < ApplicationRecord
    belongs_to :reservation
    belongs_to :extra
    has_many :invoice_line_items, as: :item

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

    def self.get_extra_totals
        # temporary fn. Get all extra charges by Extra
        extra_charges_all = ExtraCharge.all

        extra_charges_all.each_with_object(Hash.new(0)) do |ec, totals|
            totals[ec.extra] += ec.charge
        end
        
    end
end

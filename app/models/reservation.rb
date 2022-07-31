class Reservation < ApplicationRecord
    belongs_to :lot
    belongs_to :discount, optional: true
    belongs_to :group, optional: true
    belongs_to :camper
    has_many :payments
    has_many :extra_charges
    has_many :extras, through: :extra_charges
    accepts_nested_attributes_for :extra_charges

    def check_in
        # marks the reservation as checked in
        # add validations
        self.checked_in = true
        self.checked_in_time = Time.current # fix to use local timezone
    end

    def check_out
        # this is only to "undo" a check-in. We don't need to records check-out times for our park
        # add validations
        self.checked_in = false
        self.checked_in_time = nil
    end

    def set_total
        lot_fee = self.lot.lot_fee
        if self.discount.percentage?
            self.total = lot_fee * self.discount.discount_percent
        else
            self.total = lot_fee - self.discount.amount
        end
    end

    def get_payments_total
        payments_total = Payment.subtotal(self.id)
    end

    def due
        pmt = Payment.subtotal(self.id)
        self.total - pmt
    end

    def set_all_extras
        exts = Extra.all
        self.extras << exts
    end
end

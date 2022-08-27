class Reservation < ApplicationRecord
    belongs_to :lot
    belongs_to :discount, optional: true
    belongs_to :group, optional: true
    belongs_to :camper
    has_many :payments, dependent: :delete_all
    has_many :extra_charges, dependent: :delete_all
    has_many :extras, through: :extra_charges
    accepts_nested_attributes_for :extra_charges

    # to-do list
    #   still need code to check for conflicts with lots
    #   check in all reservations for a group/camper

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
        if self.discount.nil?
            self.total = lot_fee
        elsif self.discount.percentage?
            self.total = lot_fee * (1 - self.discount.discount_percent)
        else
            self.total = lot_fee - self.discount.amount
        end
    end

    def get_payments_total
        payments_total = Payment.subtotal(self.id)
    end

    def due
        pmt = Payment.subtotal(self.id)
        self.total + self.get_extra_charges_total - pmt
    end

    def set_all_extras
        exts = Extra.all
        self.extras << exts
    end

    def get_extra_charges_total
        ext_charges_total = ExtraCharge.subtotal(self.id)
    end

    def self.find_by_last_name(ln)
        reservations = Reservation.joins(:camper).where("last_name LIKE ?", Camper.sanitize_sql_like(ln) + '%')
        #reservations = Reservation.where("last_name LIKE ?", Reservation.sanitize_sql_like(ln))
    end
end

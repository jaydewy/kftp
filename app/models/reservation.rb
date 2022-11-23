class Reservation < ApplicationRecord
    belongs_to :lot
    belongs_to :discount, optional: true
    belongs_to :group, optional: true
    belongs_to :camper
    belongs_to :event
    has_many :payments, dependent: :delete_all
    has_many :extra_charges, dependent: :delete_all
    has_many :extras, through: :extra_charges
    has_one :site_type, through: :lot

    accepts_nested_attributes_for :extra_charges

    validates_with ReservationValidator

    # to-do list
    #   still need code to check for conflicts with lots per event - validator
    #   check in/out all reservations for a group/camper

    # Instance methods

    def check_in
        # marks the reservation as checked in
        # add validations
        self.checked_in = true
        self.checked_in_time = Time.current
    end

    def check_out
        # this is only to "undo" a check-in. We don't need to record check-out times for our park
        # add validations
        self.checked_in = false
        self.checked_in_time = nil
    end

    def set_total
        # add checks here in case Fee is not found
        lot_fees = self.site_type.fees
        # find the Fee applicable to the reservation's Event
        lot_fee = lot_fees.find_by(event_id: self.event_id).amount
            
        if self.discount.is_percent
            self.total = lot_fee * (1 - self.discount.amount)
        else
            self.total = lot_fee - self.discount.amount
        end

        # old implementation
        # lot_fee = self.lot.lot_fee
        # if self.discount.nil?
        #     self.total = lot_fee
        # elsif self.discount.percentage?
        #     self.total = lot_fee * (1 - self.discount.discount_percent)
        # else
        #     self.total = lot_fee - self.discount.amount
        # end
    end

    def get_payments_total
        payments_total = Payment.subtotal(self.id)
    end

    def due
        pmt = Payment.subtotal(self.id)
        self.total + self.get_extra_charges_total - pmt
    end

    def set_all_extras
        exts = Extra.all # change to extras for res event only
        self.extras = exts
    end

    def get_extra_charges_total
        ext_charges_total = ExtraCharge.subtotal(self.id)
    end

    # Class methods

    def self.find_by_last_name(ln)
        reservations = Reservation.joins(:camper).where("last_name LIKE ?", Camper.sanitize_sql_like(ln) + '%')
        #reservations = Reservation.where("last_name LIKE ?", Reservation.sanitize_sql_like(ln))
    end

    def self.get_total_fees
        reservations = Reservation.where("checked_in = true")
        fee_total = 0
        reservations.each do |res|
            fee_total += res.total
        end
    end

    def self.active_reservations
        # return all Reservations for the current active Event
        if ae = Event.active_event
            ae.reservations.order(:lot_id)
        else
            # decide what to return here - error message perhaps, or a notice
            Reservation.order(:lot_id)
        end
    end
end

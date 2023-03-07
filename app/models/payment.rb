class Payment < ApplicationRecord
    belongs_to :payment_method
    belongs_to :reservation

    # to-do list
    #   add validations
    #   add a void flag
    #   

    # Class methods

    def self.subtotal(reservation_id)
        # Returns the total of all payments applied to the specified reservation
        reservation = Reservation.find(reservation_id)
        res_payments = reservation.payments
        total = 0.0
        res_payments.each do |p|
            total += p.amount
        end
        return total
    end

    def self.get_payments_by_date(dt)
        payments = Payment.where("created_at BETWEEN ? AND ?", dt.beginning_of_day, dt.end_of_day)
        return payments
    end

    def self.get_payment_totals_by_date(dt)
        # Get totals of all payments made on the specified date, by PaymentMethod
        payments = Payment.where("created_at BETWEEN ? AND ?", dt.beginning_of_day, dt.end_of_day)
        payments.each_with_object(Hash.new(0)) do |p, totals|
            totals[p.payment_method] += p.amount
        end
    end

    def self.get_payment_totals_active_event
        # Get totals of all Payments made for the active Event, by PaymentMethod
        payments = Payment.joins(:reservation).merge(Reservation.active)
        payments.each_with_object(Hash.new(0)) do |p, totals|
            totals[p.payment_method] += p.amount
        end
    end

    def self.get_payment_totals
        # temporary fn. Get all Payments for all Reservations, by PaymentMethod
        payments = Payment.all
        payments.each_with_object(Hash.new(0)) do |p, totals|
            totals[p.payment_method] += p.amount
        end
    end
end

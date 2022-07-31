class Payment < ApplicationRecord
    belongs_to :payment_method
    belongs_to :reservation

    def self.subtotal(reservation_id)
        reservation = Reservation.find(reservation_id)
        res_payments = reservation.payments
        total = 0.0
        res_payments.each do |p|
            total += p.amount
        end
        return total
    end
end

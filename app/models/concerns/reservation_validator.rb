class ReservationValidator < ActiveModel::Validator
    def validate(record)
        # Ensure that there is not already another reservation for the same
        #   lot for the same event
        unless reservation_lot_event_unique?(record) == 0
            record.errors.add(:lot, :reserved, message: "This Lot is already reserved for this event.")
        end
    end

    private

    def reservation_lot_event_unique?(record)
        Reservation.where(lot: record.lot).where(event: record.event).count
    end
end
class ReservationValidator < ActiveModel::Validator
    def validate(record)
        # Ensure that there is not already another reservation for the same
        #   lot for the same event, unless the reservation has a status of cancelled or revoked
        unless reservation_lot_event_unique?(record) == 0
            record.errors.add(:lot, :reserved, message: "is already reserved for this event.")
        end
    end

    private

    def reservation_lot_event_unique?(record)
        # Returns the number of reservations for the same lot and event, excluding the current record, that are not cancelled or revoked
        #   used as a true/false check in the validate method above to ensure that no other reservations already exist that would conflict with the current reservation being created or updated
        Reservation.where(lot: record.lot).where(event: record.event).where.not(id: record.id).where.not(status: [:cancelled, :revoked]).count
    end
end
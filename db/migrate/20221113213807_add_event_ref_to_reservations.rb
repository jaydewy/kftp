class AddEventRefToReservations < ActiveRecord::Migration[7.0]
  def change
    add_reference :reservations, :event
  end
end

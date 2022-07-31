class AddNullsToReservations < ActiveRecord::Migration[7.0]
  def change
    change_column_null :reservations, :camper_id, true
    change_column_null :reservations, :group_id, true
    change_column_null :reservations, :discount_id, true
  end
end

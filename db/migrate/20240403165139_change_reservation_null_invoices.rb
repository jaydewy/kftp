class ChangeReservationNullInvoices < ActiveRecord::Migration[7.0]
  def change
    change_column_null :invoices, :reservation_id, true
  end
end

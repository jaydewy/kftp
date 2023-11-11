class CreateJoinTableInvoiceReservation < ActiveRecord::Migration[7.0]
  def change
    create_join_table :invoices, :reservations do |t|
      # t.index [:invoice_id, :reservation_id]
      # t.index [:reservation_id, :invoice_id]
    end
  end
end

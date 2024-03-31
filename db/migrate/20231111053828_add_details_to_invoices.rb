class AddDetailsToInvoices < ActiveRecord::Migration[7.0]
  def change
    # add_column :invoices, :invoice_number, :string
    # add_column :invoices, :recipient_name, :string
    # add_column :invoices, :status, :integer, default: 0
    # add_column :invoices, :lot_name, :string
    add_column :invoices, :paid_date, :date
  end
end

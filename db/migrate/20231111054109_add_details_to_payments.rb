class AddDetailsToPayments < ActiveRecord::Migration[7.0]
  def change
    add_reference :payments, :invoice, foreign_key: true, null:true
    add_column :payments, :reference_number, :string
    add_column :payments, :status, :integer, default: 0
    add_column :payments, :change_back, :decimal, precision: 5, scale: 2
  end
end

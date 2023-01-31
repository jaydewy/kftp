class CreateInvoices < ActiveRecord::Migration[7.0]
  def change
    create_table :invoices do |t|
      t.string :recipient
      t.belongs_to :reservation, null: false, foreign_key: true

      t.timestamps
    end
  end
end

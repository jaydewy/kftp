class CreateInvoiceLineItems < ActiveRecord::Migration[7.0]
  def change
    create_table :invoice_line_items do |t|
      t.string :item_name
      t.integer :item_quantity, null: false
      t.decimal :item_unit_price, precision: 5, scale: 2
      t.references :invoice, null: false, foreign_key: true
      t.references :discount, foreign_key: true
      t.references :item, polymorphic: true, null: false

      t.timestamps
    end
  end
end

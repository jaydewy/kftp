class CreateFees < ActiveRecord::Migration[7.0]
  def change
    create_table :fees do |t|
      t.string :name
      t.decimal :amount, precision: 10, scale: 2
      t.references :event, null: false
      t.references :site_type, null: false

      t.timestamps
    end
  end
end
